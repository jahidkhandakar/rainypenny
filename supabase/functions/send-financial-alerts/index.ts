// Server-side financial alerts.
//
// Everything the app needs day to day is scheduled on the device: the rules run
// locally against a ledger that is already on the phone, so alerts work offline
// and no financial data leaves the device.
//
// This function exists for the cases a device cannot cover on its own — a user
// who has not opened the app in weeks, or a payment that falls due while the
// phone is off. Point a cron trigger at it:
//
//   select cron.schedule(
//     'financial-alerts',
//     '0 9 * * *',
//     $$ select net.http_post(
//          url := 'https://YOUR-PROJECT.functions.supabase.co/send-financial-alerts',
//          headers := '{"Authorization": "Bearer YOUR_SERVICE_ROLE_KEY"}'::jsonb
//        ) $$
//   );
//
// It sends only a code and its arguments, never a rendered sentence — the
// device localises the payload exactly as the in-app insights are localised, so
// a user reading the app in Arabic gets an Arabic notification.

import { createClient } from 'jsr:@supabase/supabase-js@2';

const PAYMENT_REMINDER_LEAD_DAYS = 3;

interface AlertPayload {
  code: string;
  subject?: string;
  amount?: number;
  days?: number;
  route: string;
}

Deno.serve(async (req: Request) => {
  if (req.method !== 'POST') {
    return new Response('Method not allowed', { status: 405 });
  }

  // The service role key is required: this reads across users, which the
  // anon key is correctly forbidden from doing by row-level security.
  const supabase = createClient(
    Deno.env.get('SUPABASE_URL')!,
    Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!,
  );

  const today = new Date();
  const horizon = new Date(today);
  horizon.setDate(horizon.getDate() + PAYMENT_REMINDER_LEAD_DAYS);
  const horizonDate = horizon.toISOString().split('T')[0];

  // Payments falling due inside the reminder window, for users who have not
  // silenced payment reminders.
  const { data: loans, error } = await supabase
    .from('loans')
    .select('id, user_id, name, monthly_payment, next_payment_date')
    .lte('next_payment_date', horizonDate)
    .gte('next_payment_date', today.toISOString().split('T')[0]);

  if (error) {
    return Response.json({ error: error.message }, { status: 500 });
  }

  const { data: preferences } = await supabase
    .from('notification_preferences')
    .select('user_id, payment_reminders');

  const optedOut = new Set(
    (preferences ?? [])
      .filter((row) => row.payment_reminders === false)
      .map((row) => row.user_id),
  );

  const alerts: Array<{ userId: string; payload: AlertPayload }> = [];

  for (const loan of loans ?? []) {
    if (optedOut.has(loan.user_id)) continue;

    const due = new Date(loan.next_payment_date);
    const days = Math.round(
      (due.getTime() - today.getTime()) / (1000 * 60 * 60 * 24),
    );

    alerts.push({
      userId: loan.user_id,
      payload: {
        code: 'debtDueSoon',
        subject: loan.name,
        amount: Number(loan.monthly_payment),
        days,
        route: '/loans',
      },
    });
  }

  // Delivery. Wire this to your push provider — the device tokens would live in
  // a `device_tokens` table keyed by user_id, and each payload goes out as a
  // data-only message so the app renders it in the user's own language.
  //
  // for (const alert of alerts) { await sendPush(alert.userId, alert.payload); }

  return Response.json({ scheduled: alerts.length, alerts });
});

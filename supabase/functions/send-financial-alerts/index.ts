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

/// Constant-time string comparison, so a rejected call takes the same time
/// whether the key was wrong in the first character or the last.
function timingSafeEqual(a: string, b: string): boolean {
  if (a.length === 0 || b.length === 0) return false;
  const encoder = new TextEncoder();
  const left = encoder.encode(a);
  const right = encoder.encode(b);
  // Fold the length difference into the result rather than returning early.
  let mismatch = left.length ^ right.length;
  for (let i = 0; i < Math.max(left.length, right.length); i++) {
    mismatch |= (left[i] ?? 0) ^ (right[i] ?? 0);
  }
  return mismatch === 0;
}

Deno.serve(async (req: Request) => {
  if (req.method !== 'POST') {
    return new Response('Method not allowed', { status: 405 });
  }

  const serviceRoleKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;

  // Only the cron trigger may run this.
  //
  // Supabase's own `verify_jwt` is not enough on its own: it proves the caller
  // holds *a* valid token, and the anon key ships inside the mobile app, so
  // every user — and anyone who has read the bundle — would pass it. This
  // function reads every account's debts with the service role, so it has to
  // check for the service role specifically.
  //
  // Compared byte-by-byte in constant time so a wrong key cannot be recovered
  // by timing the rejection.
  const presented = (req.headers.get('Authorization') ?? '')
    .replace(/^Bearer\s+/i, '');
  if (!timingSafeEqual(presented, serviceRoleKey)) {
    return new Response('Forbidden', { status: 403 });
  }

  const supabase = createClient(
    Deno.env.get('SUPABASE_URL')!,
    serviceRoleKey,
  );

  const today = new Date();
  const horizon = new Date(today);
  horizon.setDate(horizon.getDate() + PAYMENT_REMINDER_LEAD_DAYS);
  const horizonDate = horizon.toISOString().split('T')[0];

  // Payments falling due inside the reminder window, for users who have not
  // silenced payment reminders.
  // PostgREST caps an unbounded select at 1,000 rows and says nothing about it,
  // so the range is explicit: silently alerting the first thousand users and
  // no one else is the kind of bug that only shows up once the app is working.
  const { data: loans, error } = await supabase
    .from('loans')
    .select('id, user_id, name, monthly_payment, next_payment_date')
    .lte('next_payment_date', horizonDate)
    .gte('next_payment_date', today.toISOString().split('T')[0])
    .range(0, 9999);

  if (error) {
    return Response.json({ error: error.message }, { status: 500 });
  }

  // Only the users who actually have a loan due, rather than the whole table.
  const affected = [...new Set((loans ?? []).map((row) => row.user_id))];
  const { data: preferences } = await supabase
    .from('notification_preferences')
    .select('user_id, payment_reminders')
    .in('user_id', affected.length > 0 ? affected : ['']);

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

  // A count, not the alerts themselves. The body used to carry every user's id,
  // loan name and payment amount, which is a lot of other people's financial
  // detail to hand back over HTTP for the sake of a debugging convenience.
  return Response.json({ scheduled: alerts.length });
});

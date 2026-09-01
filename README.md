# RainyPenny

A personal finance app: track income and expenses, set category budgets, save
towards goals, pay down debt, and see where the money actually went.

Built with Flutter, Riverpod, GoRouter and Supabase, in a feature-first clean
architecture.

---

## Running it

The app runs with no backend at all. With no Supabase credentials it uses a
bundled in-memory dataset, signs a demo user in automatically, and every screen
behaves exactly as it would against a real database.

```bash
flutter run
```

To run against Supabase, pass the credentials at build time:

```bash
flutter run --dart-define=SUPABASE_URL=https://YOUR-PROJECT.supabase.co --dart-define=SUPABASE_ANON_KEY=YOUR_PUBLISHABLE_KEY
```

Settings → Data source shows which backend the running build is using.

### Setting up the database

Run `supabase/migrations/0001_init.sql` against your project (SQL editor, or
`supabase db push`). It creates every table, seeds the shared categories,
enables row-level security on all user-owned tables, and adds the trigger that
creates a profile row for each new sign-up.

---

## Architecture

```
Presentation  screens, widgets, controllers (Riverpod notifiers)
     ↓
Domain        entities, services, rules, repository interfaces
     ↓
Data          repository implementations, data sources, mappers
     ↓
              Supabase  /  in-memory demo data
```

Code is organised by feature, not by layer:

```
lib/
├── core/            theme, routing, localization, settings, shared widgets
└── features/
    ├── auth/        sign in, sign up, password reset
    ├── financial/   the shared domain: entities, calculators, rules
    ├── dashboard/   home screen
    ├── transactions/
    ├── budget/
    ├── savings/
    ├── loans/
    ├── reports/
    ├── notifications/
    └── profile/
```

Three rules hold the whole thing together:

**Nothing above the data layer knows where data comes from.** Repositories take
a `FinanceDataSource`; `lib/core/di/providers.dart` decides whether that is the
mock or Supabase. Swapping backends changes one file.

**Financial logic lives in the domain, never in widgets.** Every figure on
screen is computed by `BalanceCalculator`, `BudgetCalculator`,
`SavingsCalculator`, `DebtCalculator` or `HealthCalculator`, from one ledger. A
new transaction moves the dashboard, the donut, the budgets and the health
score at once because they all read the same source.

**Thresholds live in `domain/rules/`.** The same numbers colour a progress bar,
raise a warning banner and produce a notification, so those three can never
disagree.

### Insights

`InsightEngine` emits structured observations — a code plus the numbers behind
it — never sentences. The presentation layer turns a code into copy in the
active language and currency. The notification layer calls the same function,
so an insight reads identically on the dashboard and on a lock screen.

---

## Localization

Ten languages, ARB files in `lib/core/localization/l10n/`. English is the
template; untranslated keys fall back to it automatically.

Arabic and Urdu switch the entire interface to right-to-left — there are no
separate RTL screens, the layout adapts. Money is wrapped in a Unicode
bidirectional isolate so a figure like `−$84.50` keeps its sign on the correct
side in an RTL layout.

After editing an ARB file:

```bash
flutter gen-l10n
```

Currently fully translated: English, plus Arabic and Urdu for the insight and
action strings. The other seven have the core interface translated and fall
back to English elsewhere.

---

## Notifications

Alerts are **scheduled on the device**. Every rule runs against a ledger that is
already on the phone, so notifications keep working with no network, cost
nothing to operate, and no financial data is sent anywhere.

The pipeline mirrors the insight one:

```
financial rules → Insight → NotificationScheduler → ScheduledNotification
                                                          ↓
                                       rendered in the active language
                                                          ↓
                                                  OS notification
```

`NotificationScheduler` is pure and synchronous — given the same ledger it
always produces the same schedule — which makes every policy decision
unit-testable without touching a platform channel. `NotificationService` then
just executes it.

Four channels, each independently switchable in Settings → Notifications:
budget alerts, payment reminders, savings updates and the weekly summary.
Quiet hours push an alert that lands overnight to the following morning.

What gets through is deliberately narrower than what the dashboard shows:
`NotificationRules.isWorthDelivering` passes critical and warning insights plus
a goal that is nearly funded, and drops everything merely informative. An
observation worth reading is not automatically worth a buzz in someone's
pocket.

Notifications carry an insight rather than a title and body, so the copy is
produced at delivery time — switching language re-renders everything still
pending instead of leaving yesterday's language sitting in the OS queue.
Tapping one deep-links to the screen it is about.

### Server-side alerts

`supabase/functions/send-financial-alerts/` covers what a device cannot: a user
who has not opened the app in weeks, or a payment falling due while the phone
is off. It is a Deno function driven by a cron trigger, and it sends a code plus
its arguments rather than a rendered sentence, so the device localises the push
exactly as it localises the in-app insight.

It needs a push provider and a `device_tokens` table to actually deliver; the
send call is marked in the file.

### Platform notes

Android needs core library desugaring (already enabled in
`android/app/build.gradle.kts`) and declares `POST_NOTIFICATIONS`,
`RECEIVE_BOOT_COMPLETED` and the boot receiver that restores pending alerts
after a restart. Web has no notification scheduler, so it falls back to a no-op
and the permission prompt is hidden there.

---

## Design system

Tokens live in `lib/core/theme/`. Widgets never hardcode a colour or a spacing
value.

- `app_colors.dart` — brand palette, semantic financial colours, chart ramp
- `app_typography.dart` — type scale, tabular figures for all money
- `app_dimens.dart` — 4pt spacing scale, radii, motion durations

The brand gradient appears in exactly four places: the splash, the balance
card, the centre Add button and the profile avatar. Everywhere else is neutral,
so the brand colour means something when it does appear.

Expenses are not red. Red is reserved for exceeded budgets, overdue payments
and errors.

---

## Tests

```bash
flutter test
```

- `test/domain/` — calculators, rules, the insight engine, and a guard that the
  seeded figures stay internally consistent
- `test/data/` — repository CRUD round-trips and the database row mappers
- `test/domain/notification_scheduler_test.dart` — delivery policy, quiet
  hours and the recurring summary
- `test/widget/` — app boot, navigation, and the auth redirect

---

## What is not built yet

- Remote push delivery. The scheduling, rules, localisation and the server
  function are done; connecting a push provider and storing device tokens is
  not.
- Recurring transactions.
- Multi-account and multi-currency conversion. Currency changes the display
  format only; no FX is applied.
- Full translations for the seven non-RTL languages beyond the core interface.

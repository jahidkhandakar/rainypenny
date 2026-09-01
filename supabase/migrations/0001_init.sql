-- RainyPenny initial schema.
--
-- Every user-owned table carries user_id and is protected by row-level
-- security, so a user can only ever read or write their own financial records.
-- The Flutter client is never the security boundary; these policies are.

-- ---------------------------------------------------------------------------
-- Profiles
-- ---------------------------------------------------------------------------

create table if not exists public.profiles (
  id            uuid primary key references auth.users (id) on delete cascade,
  full_name     text        not null default '',
  email         text        not null,
  avatar_url    text,
  currency_code text        not null default 'USD',
  locale        text        not null default 'en',
  theme_mode    text        not null default 'light',
  created_at    timestamptz not null default now(),
  updated_at    timestamptz not null default now()
);

-- A profile row is created automatically for every new auth user.
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, email, full_name)
  values (
    new.id,
    new.email,
    coalesce(new.raw_user_meta_data ->> 'full_name', '')
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

-- ---------------------------------------------------------------------------
-- Categories
--
-- Seeded rows have user_id null and are visible to everyone; a user may also
-- add private categories of their own.
-- ---------------------------------------------------------------------------

create table if not exists public.categories (
  id         text primary key,
  user_id    uuid references auth.users (id) on delete cascade,
  name       text        not null,
  icon       text        not null,
  is_income  boolean     not null default false,
  created_at timestamptz not null default now()
);

insert into public.categories (id, name, icon, is_income) values
  ('housing',       'Housing',          'housing',       false),
  ('food',          'Food & Dining',    'food',          false),
  ('transport',     'Transportation',   'transport',     false),
  ('shopping',      'Shopping',         'shopping',      false),
  ('bills',         'Bills & Utilities','bills',         false),
  ('entertainment', 'Entertainment',    'entertainment', false),
  ('health',        'Health & Fitness', 'health',        false),
  ('education',     'Education',        'education',     false),
  ('travel',        'Travel',           'travel',        false),
  ('other',         'Other',            'other',         false),
  ('salary',        'Salary',           'salary',        true),
  ('freelance',     'Freelance',        'freelance',     true),
  ('investments',   'Investments',      'investment',    true),
  ('refunds',       'Refunds & Gifts',  'gift',          true)
on conflict (id) do nothing;

-- ---------------------------------------------------------------------------
-- Transactions
--
-- Income and expenses share one table: `type` carries the direction and
-- `amount` is always a positive magnitude, matching the domain model.
-- ---------------------------------------------------------------------------

create table if not exists public.transactions (
  id          uuid primary key default gen_random_uuid(),
  user_id     uuid        not null references auth.users (id) on delete cascade,
  title       text        not null,
  amount      numeric(14, 2) not null check (amount > 0),
  occurred_at timestamptz not null,
  type        text        not null check (type in ('income', 'expense')),
  category_id text        not null references public.categories (id),
  note        text,
  account     text        not null default 'Main Account',
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now()
);

create index if not exists transactions_user_date_idx
  on public.transactions (user_id, occurred_at desc);
create index if not exists transactions_user_category_idx
  on public.transactions (user_id, category_id);

-- ---------------------------------------------------------------------------
-- Budgets
--
-- One limit per category per user; spend is never stored, it is derived from
-- the ledger so the two can never disagree.
-- ---------------------------------------------------------------------------

create table if not exists public.budgets (
  id            uuid primary key default gen_random_uuid(),
  user_id       uuid        not null references auth.users (id) on delete cascade,
  category_id   text        not null references public.categories (id),
  monthly_limit numeric(14, 2) not null check (monthly_limit >= 0),
  created_at    timestamptz not null default now(),
  updated_at    timestamptz not null default now(),
  unique (user_id, category_id)
);

-- ---------------------------------------------------------------------------
-- Savings goals
-- ---------------------------------------------------------------------------

create table if not exists public.savings_goals (
  id                   uuid primary key default gen_random_uuid(),
  user_id              uuid        not null references auth.users (id) on delete cascade,
  name                 text        not null,
  saved                numeric(14, 2) not null default 0 check (saved >= 0),
  target               numeric(14, 2) not null check (target > 0),
  icon                 text        not null default 'other',
  target_date          date        not null,
  monthly_contribution numeric(14, 2) not null default 0 check (monthly_contribution >= 0),
  created_at           timestamptz not null default now(),
  updated_at           timestamptz not null default now()
);

create index if not exists savings_goals_user_idx
  on public.savings_goals (user_id);

-- ---------------------------------------------------------------------------
-- Loans and their payments
-- ---------------------------------------------------------------------------

create table if not exists public.loans (
  id                uuid primary key default gen_random_uuid(),
  user_id           uuid        not null references auth.users (id) on delete cascade,
  name              text        not null,
  lender            text        not null default '',
  kind              text        not null default 'loan' check (kind in ('loan', 'credit_card')),
  principal         numeric(14, 2) not null check (principal >= 0),
  remaining         numeric(14, 2) not null check (remaining >= 0),
  monthly_payment   numeric(14, 2) not null default 0 check (monthly_payment >= 0),
  next_payment_date date        not null,
  interest_rate     numeric(6, 3) not null default 0,
  icon              text        not null default 'other',
  created_at        timestamptz not null default now(),
  updated_at        timestamptz not null default now()
);

create index if not exists loans_user_due_idx
  on public.loans (user_id, next_payment_date);

create table if not exists public.loan_payments (
  id      uuid primary key default gen_random_uuid(),
  user_id uuid        not null references auth.users (id) on delete cascade,
  loan_id uuid        not null references public.loans (id) on delete cascade,
  amount  numeric(14, 2) not null check (amount > 0),
  paid_at timestamptz not null default now()
);

create index if not exists loan_payments_loan_idx
  on public.loan_payments (loan_id, paid_at desc);

-- ---------------------------------------------------------------------------
-- Notification preferences
-- ---------------------------------------------------------------------------

create table if not exists public.notification_preferences (
  user_id          uuid primary key references auth.users (id) on delete cascade,
  budget_alerts    boolean     not null default true,
  payment_reminders boolean    not null default true,
  savings_updates  boolean     not null default true,
  weekly_summary   boolean     not null default true,
  updated_at       timestamptz not null default now()
);

-- ---------------------------------------------------------------------------
-- Row-level security
--
-- Enabled on every user-owned table. The policies are deliberately uniform:
-- you may touch a row if, and only if, it is yours.
-- ---------------------------------------------------------------------------

alter table public.profiles                 enable row level security;
alter table public.categories               enable row level security;
alter table public.transactions             enable row level security;
alter table public.budgets                  enable row level security;
alter table public.savings_goals            enable row level security;
alter table public.loans                    enable row level security;
alter table public.loan_payments            enable row level security;
alter table public.notification_preferences enable row level security;

drop policy if exists "profiles are self-service" on public.profiles;
create policy "profiles are self-service" on public.profiles
  for all using (auth.uid() = id) with check (auth.uid() = id);

drop policy if exists "shared and own categories are readable" on public.categories;
create policy "shared and own categories are readable" on public.categories
  for select using (user_id is null or auth.uid() = user_id);

drop policy if exists "own categories are writable" on public.categories;
create policy "own categories are writable" on public.categories
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "own transactions" on public.transactions;
create policy "own transactions" on public.transactions
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "own budgets" on public.budgets;
create policy "own budgets" on public.budgets
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "own savings goals" on public.savings_goals;
create policy "own savings goals" on public.savings_goals
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "own loans" on public.loans;
create policy "own loans" on public.loans
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "own loan payments" on public.loan_payments;
create policy "own loan payments" on public.loan_payments
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "own notification preferences" on public.notification_preferences;
create policy "own notification preferences" on public.notification_preferences
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ---------------------------------------------------------------------------
-- Recording a loan payment
--
-- Reducing the balance and rolling the due date must happen together, so it
-- lives in the database rather than in the client.
-- ---------------------------------------------------------------------------

create or replace function public.record_loan_payment(
  p_loan_id uuid,
  p_amount  numeric
)
returns void
language plpgsql
security invoker
set search_path = public
as $$
declare
  v_due date;
begin
  select next_payment_date into v_due
  from public.loans
  where id = p_loan_id and user_id = auth.uid();

  if v_due is null then
    raise exception 'Loan not found';
  end if;

  update public.loans
  set remaining         = greatest(remaining - p_amount, 0),
      next_payment_date = (v_due + interval '1 month')::date,
      updated_at        = now()
  where id = p_loan_id and user_id = auth.uid();

  insert into public.loan_payments (user_id, loan_id, amount)
  values (auth.uid(), p_loan_id, p_amount);
end;
$$;

-- ---------------------------------------------------------------------------
-- Keep updated_at honest
-- ---------------------------------------------------------------------------

create or replace function public.touch_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

do $$
declare
  t text;
begin
  foreach t in array array[
    'profiles', 'transactions', 'budgets', 'savings_goals', 'loans'
  ] loop
    execute format(
      'drop trigger if exists touch_%1$s on public.%1$s;
       create trigger touch_%1$s before update on public.%1$s
       for each row execute function public.touch_updated_at();', t);
  end loop;
end;
$$;

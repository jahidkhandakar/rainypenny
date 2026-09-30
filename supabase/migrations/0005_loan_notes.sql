-- Optional notes on a debt.
--
-- Section 11 lists notes among the fields a loan carries. The column was never
-- created, so there was nowhere for the app to put them.
alter table public.loans
  add column if not exists note text;

-- ---------------------------------------------------------------------------
-- Reading a debt's repayments
--
-- `loan_payments` has been written to since the first migration by
-- `record_loan_payment`, and never read. Section 11 asks for the history, so
-- the client needs to select it — which row-level security already scopes to
-- the owner. The index makes the per-loan, newest-first read the cheap one.
-- ---------------------------------------------------------------------------

create index if not exists loan_payments_user_loan_idx
  on public.loan_payments (user_id, loan_id, paid_at desc);

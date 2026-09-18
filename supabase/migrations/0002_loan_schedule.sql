-- Loan repayment schedules.
--
-- Version 1 tracked a balance and a next payment date, which is enough to know
-- what is owed but not enough to answer "how far through this am I?". These
-- columns add the term itself, so the app can show paid and remaining
-- installments, a final payment date and an honest progress bar.

alter table public.loans
  add column if not exists total_installments integer not null default 0
    check (total_installments >= 0),
  add column if not exists paid_installments  integer not null default 0
    check (paid_installments >= 0),
  add column if not exists start_date         date;

-- A plan can never claim more installments paid than it has.
alter table public.loans
  drop constraint if exists loans_installments_within_term;
alter table public.loans
  add constraint loans_installments_within_term
  check (total_installments = 0 or paid_installments <= total_installments);

-- ---------------------------------------------------------------------------
-- Recording a payment now also advances the installment counter.
--
-- Balance, due date and counter move together inside one statement, so a card
-- can never show "3 of 12 paid" against a balance that says otherwise.
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
  v_due   date;
  v_total integer;
  v_paid  integer;
begin
  select next_payment_date, total_installments, paid_installments
    into v_due, v_total, v_paid
  from public.loans
  where id = p_loan_id and user_id = auth.uid();

  if v_due is null then
    raise exception 'Loan not found';
  end if;

  update public.loans
  set remaining         = greatest(remaining - p_amount, 0),
      next_payment_date = (v_due + interval '1 month')::date,
      -- Open-ended debts (v_total = 0) keep counting payments made; a fixed
      -- term stops at its own length rather than overrunning it.
      paid_installments = case
        when v_total = 0 then v_paid + 1
        else least(v_paid + 1, v_total)
      end,
      updated_at        = now()
  where id = p_loan_id and user_id = auth.uid();

  insert into public.loan_payments (user_id, loan_id, amount)
  values (auth.uid(), p_loan_id, p_amount);
end;
$$;

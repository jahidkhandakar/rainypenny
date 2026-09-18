-- Custom categories.
--
-- The table and its policies already allowed a user to own rows; what was
-- missing were the guarantees that make a management screen safe to expose.

-- A user cannot end up with two categories of the same name. Seeded rows carry
-- a null user_id and Postgres treats nulls as distinct, so the shared set is
-- unaffected by this index.
create unique index if not exists categories_user_name_idx
  on public.categories (user_id, lower(name))
  where user_id is not null;

-- Deleting a category must never orphan a transaction or a budget. Both
-- foreign keys already point here; this states the intent explicitly so a
-- delete is refused by the database rather than silently cascading.
alter table public.transactions
  drop constraint if exists transactions_category_id_fkey;
alter table public.transactions
  add constraint transactions_category_id_fkey
  foreign key (category_id) references public.categories (id)
  on delete restrict;

alter table public.budgets
  drop constraint if exists budgets_category_id_fkey;
alter table public.budgets
  add constraint budgets_category_id_fkey
  foreign key (category_id) references public.categories (id)
  on delete restrict;

-- The seeded rows are shared by every account, so nobody may edit or remove
-- them. The existing "own categories are writable" policy covers insert,
-- update and delete with `auth.uid() = user_id`, which is already false for a
-- null user_id — this comment records that the read policy being wider than
-- the write policy is deliberate, not an oversight.
comment on table public.categories is
  'Seeded rows (user_id is null) are readable by everyone and writable by '
  'nobody; a user may add, rename and delete only their own.';

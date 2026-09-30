-- The three seeded categories the specification lists but the schema never
-- carried: Family as an expense, Business and Other income as income.
--
-- `on conflict do nothing` keeps this safe to re-run, and safe on a project
-- where a user has already created a custom category of the same name — the
-- unique index from 0003 only covers rows with a user_id, and these are shared
-- rows with a null one.
insert into public.categories (id, name, icon, is_income) values
  ('family',       'Family',       'family',   false),
  ('business',     'Business',     'business', true),
  ('other_income', 'Other income', 'other',    true)
on conflict (id) do nothing;

import 'package:flutter_test/flutter_test.dart';
import 'package:lavio/features/financial/data/demo_dataset.dart';
import 'package:lavio/features/financial/domain/entities/category.dart';

/// Guards the category list the specification names.
///
/// Sections 6 and 8 of the agreement list the categories the app ships with.
/// Three of them — Family, Business and Other income — were missing for months
/// without anything noticing, because nothing asserted the list. These tests
/// are that assertion: add a seeded category and it belongs here too.
void main() {
  final expense = DemoDataset.expenseCategories;
  final income = DemoDataset.incomeCategories;

  group('expense categories (spec section 8)', () {
    // "Food, Transportation, Housing, Bills, Shopping, Education, Health,
    // Entertainment, Travel, Family, Other"
    const required = {
      'food',
      'transport',
      'housing',
      'bills',
      'shopping',
      'education',
      'health',
      'entertainment',
      'travel',
      'family',
      'other',
    };

    test('every category the specification names is present', () {
      expect(expense.map((c) => c.id).toSet(), containsAll(required));
    });

    test('none of them is marked as income', () {
      for (final category in expense) {
        expect(category.isIncome, isFalse, reason: category.id);
      }
    });
  });

  group('income categories (spec section 6)', () {
    // "Salary, Freelance, Business, Other income"
    const required = {'salary', 'freelance', 'business', 'other_income'};

    test('every category the specification names is present', () {
      expect(income.map((c) => c.id).toSet(), containsAll(required));
    });

    test('all of them are marked as income', () {
      for (final category in income) {
        expect(category.isIncome, isTrue, reason: category.id);
      }
    });
  });

  group('the seeded set as a whole', () {
    final all = [...expense, ...income];

    test('ids are unique', () {
      final ids = all.map((c) => c.id).toList();
      expect(ids.toSet().length, ids.length);
    });

    test('none is marked custom — these are shared rows', () {
      for (final category in all) {
        expect(category.isCustom, isFalse, reason: category.id);
      }
    });

    test('every one carries a real icon', () {
      for (final category in all) {
        expect(CategoryIcon.values, contains(category.icon));
      }
    });
  });
}

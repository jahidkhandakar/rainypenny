import '../../../financial/domain/entities/category.dart';

class CategoryBudgetRecommendation {
  const CategoryBudgetRecommendation({
    required this.category,
    required this.percentage,
    required this.recommendedLimit,
  });

  final Category category;

  /// Percentage of total salary (e.g. 0.30 for 30%)
  final double percentage;

  /// Computed limit rounded to neat figures (multiples of 5 or 10)
  final double recommendedLimit;
}

class BudgetRecommender {
  BudgetRecommender._();

  /// Balanced percentage allocation based on standard 50/30/20 guidelines:
  /// Needs (~57%), Wants (~25%), Buffer/Flexible (~18% remaining for savings & ad-hoc).
  static const Map<String, double> categoryWeights = {
    'housing': 0.28, // 28% - Rent / Mortgage
    'groceries': 0.12, // 12% - Supermarket / Food staples
    'transport': 0.08, // 8%  - Fuel, transit, car maintenance
    'utilities': 0.06, // 6%  - Electricity, water, heating
    'bills': 0.05, // 5%  - Phone, internet, subscriptions
    'health': 0.04, // 4%  - Medical, pharmacy, fitness
    'food': 0.06, // 6%  - Dining out, coffee, takeout
    'shopping': 0.05, // 5%  - Clothing, gadgets
    'entertainment': 0.04, // 4%  - Movies, leisure, hobbies
    'personal_care': 0.03, // 3%  - Grooming, personal care
    'travel': 0.04, // 4%  - Weekend trips, vacation fund
    'education': 0.02, // 2%  - Books, courses, learning
    'other': 0.03, // 3%  - Miscellaneous buffer
  };

  /// Generates recommended budget limits from [monthlySalary].
  static List<CategoryBudgetRecommendation> calculateFromSalary({
    required double monthlySalary,
    required List<Category> allCategories,
  }) {
    final builtInExpenses = allCategories.where((cat) => !cat.isIncome && !cat.isCustom);

    return builtInExpenses.map((category) {
      final weight = categoryWeights[category.id] ?? 0.02;
      // Calculate amount and round to clean $5 increments
      final rawAmount = monthlySalary * weight;
      final roundedLimit = (rawAmount / 5).round() * 5.0;

      return CategoryBudgetRecommendation(
        category: category,
        percentage: weight,
        recommendedLimit: roundedLimit > 0 ? roundedLimit : 10.0,
      );
    }).toList();
  }
}

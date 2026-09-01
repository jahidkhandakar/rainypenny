import '../../domain/entities/category.dart';
import '../../domain/entities/loan.dart';
import '../../domain/entities/savings_goal.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/user_profile.dart';

/// Translation between database rows and domain entities.
///
/// Keeping the mapping here means the entities stay free of serialisation
/// concerns and the column names live in exactly one place.

double _num(Object? value) => (value as num?)?.toDouble() ?? 0;

DateTime _date(Object? value) =>
    DateTime.tryParse(value as String? ?? '')?.toLocal() ?? DateTime.now();

abstract final class CategoryMapper {
  static Category fromRow(Map<String, dynamic> row) {
    return Category(
      id: row['id'] as String,
      name: row['name'] as String,
      icon: iconFromKey(row['icon'] as String?),
      isIncome: row['is_income'] as bool? ?? false,
    );
  }

  static CategoryIcon iconFromKey(String? key) {
    return CategoryIcon.values.firstWhere(
      (icon) => icon.name == key,
      orElse: () => CategoryIcon.other,
    );
  }
}

abstract final class TransactionMapper {
  static Transaction fromRow(
    Map<String, dynamic> row,
    Map<String, Category> categories,
  ) {
    final categoryId = row['category_id'] as String;
    return Transaction(
      id: row['id'] as String,
      title: row['title'] as String,
      amount: _num(row['amount']),
      date: _date(row['occurred_at']),
      type: row['type'] == 'income'
          ? TransactionType.income
          : TransactionType.expense,
      category: categories[categoryId] ??
          Category(id: categoryId, name: categoryId, icon: CategoryIcon.other),
      note: row['note'] as String?,
      account: row['account'] as String? ?? 'Main Account',
    );
  }

  /// The id is omitted on insert so PostgreSQL generates the UUID; it is
  /// carried on update, where the row already exists.
  static Map<String, dynamic> toRow(Transaction transaction, String userId) {
    return {
      'user_id': userId,
      'title': transaction.title,
      'amount': transaction.amount,
      'occurred_at': transaction.date.toUtc().toIso8601String(),
      'type': transaction.isIncome ? 'income' : 'expense',
      'category_id': transaction.category.id,
      'note': transaction.note,
      'account': transaction.account,
    };
  }
}

abstract final class SavingsGoalMapper {
  static SavingsGoal fromRow(Map<String, dynamic> row) {
    return SavingsGoal(
      id: row['id'] as String,
      name: row['name'] as String,
      saved: _num(row['saved']),
      target: _num(row['target']),
      icon: CategoryMapper.iconFromKey(row['icon'] as String?),
      targetDate: _date(row['target_date']),
      monthlyContribution: _num(row['monthly_contribution']),
    );
  }

  static Map<String, dynamic> toRow(
    SavingsGoal goal,
    String userId, {
    bool includeId = true,
  }) {
    return {
      if (includeId) 'id': goal.id,
      'user_id': userId,
      'name': goal.name,
      'saved': goal.saved,
      'target': goal.target,
      'icon': goal.icon.name,
      'target_date': goal.targetDate.toIso8601String().split('T').first,
      'monthly_contribution': goal.monthlyContribution,
    };
  }
}

abstract final class LoanMapper {
  static Loan fromRow(Map<String, dynamic> row) {
    return Loan(
      id: row['id'] as String,
      name: row['name'] as String,
      lender: row['lender'] as String? ?? '',
      kind: row['kind'] == 'credit_card' ? LoanKind.creditCard : LoanKind.loan,
      principal: _num(row['principal']),
      remaining: _num(row['remaining']),
      monthlyPayment: _num(row['monthly_payment']),
      nextPaymentDate: _date(row['next_payment_date']),
      interestRate: _num(row['interest_rate']),
      icon: CategoryMapper.iconFromKey(row['icon'] as String?),
    );
  }

  static Map<String, dynamic> toRow(
    Loan loan,
    String userId, {
    bool includeId = true,
  }) {
    return {
      if (includeId) 'id': loan.id,
      'user_id': userId,
      'name': loan.name,
      'lender': loan.lender,
      'kind': loan.kind == LoanKind.creditCard ? 'credit_card' : 'loan',
      'principal': loan.principal,
      'remaining': loan.remaining,
      'monthly_payment': loan.monthlyPayment,
      'next_payment_date':
          loan.nextPaymentDate.toIso8601String().split('T').first,
      'interest_rate': loan.interestRate,
      'icon': loan.icon.name,
    };
  }
}

abstract final class ProfileMapper {
  static UserProfile fromRow(Map<String, dynamic> row) {
    final name = (row['full_name'] as String?)?.trim() ?? '';
    final email = row['email'] as String? ?? '';

    return UserProfile(
      id: row['id'] as String,
      name: name.isEmpty ? email.split('@').first : name,
      email: email,
      initials: initialsFor(name.isEmpty ? email : name),
      memberSince: _date(row['created_at']),
      currencyCode: row['currency_code'] as String? ?? 'USD',
      currencySymbol: symbolFor(row['currency_code'] as String? ?? 'USD'),
    );
  }

  /// `Alex Morgan` becomes `AM`; a single word gives its first two letters.
  static String initialsFor(String value) {
    final parts = value
        .trim()
        .split(RegExp(r'\s+'))
        .where((part) => part.isNotEmpty)
        .toList();
    if (parts.isEmpty) return '?';
    if (parts.length == 1) {
      final word = parts.first;
      return word.substring(0, word.length >= 2 ? 2 : 1).toUpperCase();
    }
    return '${parts.first[0]}${parts[1][0]}'.toUpperCase();
  }

  static String symbolFor(String code) {
    return const {
      'USD': '\$',
      'EUR': '€',
      'GBP': '£',
      'AED': 'د.إ',
      'INR': '₹',
      'TRY': '₺',
    }[code] ??
        code;
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../../financial/data/demo_dataset.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/domain/entities/transaction.dart';
import '../../../financial/presentation/providers/finance_providers.dart';

/// The in-progress transaction being composed on the Add screen.
class TransactionDraft {
  TransactionDraft({
    required this.type,
    required this.category,
    required this.date,
    this.amount = 0,
    this.title = '',
    this.note = '',
    this.isSaving = false,
    this.editingId,
  });

  final TransactionType type;
  final Category category;
  final DateTime date;
  final double amount;
  final String title;
  final String note;
  final bool isSaving;

  /// Set when the form is editing an existing row rather than creating one.
  final String? editingId;

  bool get isIncome => type == TransactionType.income;

  bool get isEditing => editingId != null;

  bool get isValid => amount > 0 && title.trim().isNotEmpty;

  TransactionDraft copyWith({
    TransactionType? type,
    Category? category,
    DateTime? date,
    double? amount,
    String? title,
    String? note,
    bool? isSaving,
    String? editingId,
  }) {
    return TransactionDraft(
      type: type ?? this.type,
      category: category ?? this.category,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      title: title ?? this.title,
      note: note ?? this.note,
      isSaving: isSaving ?? this.isSaving,
      editingId: editingId ?? this.editingId,
    );
  }
}

/// Drives the Add / Edit Transaction form.
///
/// Switching type swaps the category to a sensible default for that type, so
/// the form is never left in an impossible state.
class AddTransactionController extends Notifier<TransactionDraft> {
  @override
  TransactionDraft build() {
    return TransactionDraft(
      type: TransactionType.expense,
      category: DemoDataset.expenseCategories.first,
      date: DateTime.now(),
    );
  }

  /// Resets the form back to a blank expense.
  void reset() => state = build();

  /// Loads an existing row into the form for editing.
  void startEdit(Transaction transaction) {
    state = TransactionDraft(
      type: transaction.type,
      category: transaction.category,
      date: transaction.date,
      amount: transaction.amount,
      title: transaction.title,
      note: transaction.note ?? '',
      editingId: transaction.id,
    );
  }

  void setType(TransactionType type) {
    if (type == state.type) return;
    final categories = type == TransactionType.income
        ? DemoDataset.incomeCategories
        : DemoDataset.expenseCategories;
    state = state.copyWith(type: type, category: categories.first);
  }

  void setCategory(Category category) =>
      state = state.copyWith(category: category);

  void setDate(DateTime date) => state = state.copyWith(date: date);

  void setAmount(double amount) => state = state.copyWith(amount: amount);

  void setTitle(String title) => state = state.copyWith(title: title);

  void setNote(String note) => state = state.copyWith(note: note);

  /// Persists the draft and refreshes every derived figure in the app.
  Future<bool> submit() async {
    if (!state.isValid || state.isSaving) return false;
    state = state.copyWith(isSaving: true);

    final draft = state;
    final repository = ref.read(transactionRepositoryProvider);

    final transaction = Transaction(
      id: draft.editingId ?? 'tx-${DateTime.now().microsecondsSinceEpoch}',
      title: draft.title.trim(),
      amount: draft.amount,
      date: draft.date,
      type: draft.type,
      category: draft.category,
      note: draft.note.trim().isEmpty ? null : draft.note.trim(),
    );

    if (draft.isEditing) {
      await repository.updateTransaction(transaction);
    } else {
      await repository.addTransaction(transaction);
    }

    ref.invalidate(transactionsProvider);
    state = build();
    return true;
  }
}

final addTransactionControllerProvider =
    NotifierProvider<AddTransactionController, TransactionDraft>(
  AddTransactionController.new,
);

/// Deletes a transaction and refreshes the derived figures. Returns the
/// removed row so the caller can offer an undo.
final deleteTransactionProvider =
    Provider<Future<void> Function(Transaction)>((ref) {
  return (transaction) async {
    await ref
        .read(transactionRepositoryProvider)
        .deleteTransaction(transaction.id);
    ref.invalidate(transactionsProvider);
  };
});

/// Re-inserts a previously deleted transaction, backing the undo action.
final restoreTransactionProvider =
    Provider<Future<void> Function(Transaction)>((ref) {
  return (transaction) async {
    await ref.read(transactionRepositoryProvider).addTransaction(transaction);
    ref.invalidate(transactionsProvider);
  };
});

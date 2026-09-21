import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
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
    this.categoryChosen = false,
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

  /// Whether [category] is the user's own choice rather than a default.
  ///
  /// The category list loads asynchronously, so a form opened immediately gets
  /// a placeholder. This is what lets the placeholder be replaced when the real
  /// list lands without overwriting a choice someone has already made.
  final bool categoryChosen;

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
    bool? categoryChosen,
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
      categoryChosen: categoryChosen ?? this.categoryChosen,
    );
  }
}

/// Drives the Add / Edit Transaction form.
///
/// Switching type swaps the category to a sensible default for that type, so
/// the form is never left in an impossible state.
///
/// The defaults come from [categoriesProvider] — the live list, which includes
/// the user's own categories — rather than from the bundled demo set. Reading
/// the demo set here meant a category someone created was never offered when
/// they went to file a transaction against it, and that a build talking to a
/// real database still showed the hardcoded fourteen.
class AddTransactionController extends Notifier<TransactionDraft> {
  @override
  TransactionDraft build() {
    // The categories load asynchronously and this form is reachable before they
    // arrive, so a draft opened straight away starts on a placeholder. Listened
    // to rather than watched: watching would rebuild the notifier and discard
    // whatever has been typed the moment the list resolved.
    ref.listen(categoriesProvider, (_, next) {
      next.whenData(_adoptDefaultCategory);
    });

    return TransactionDraft(
      type: TransactionType.expense,
      category: _defaultFor(TransactionType.expense),
      date: DateTime.now(),
    );
  }

  /// Replaces the placeholder category once the real list is available, unless
  /// the user has already picked one or is editing an existing row.
  void _adoptDefaultCategory(List<Category> categories) {
    if (state.categoryChosen || state.isEditing) return;

    final wantIncome = state.isIncome;
    final options = categories.where((c) => c.isIncome == wantIncome);
    if (options.isEmpty) return;

    final first = options.first;
    if (first.id == state.category.id) return;
    state = state.copyWith(category: first);
  }

  /// The categories currently loaded, or an empty list while they are in
  /// flight. The form is reachable before the first fetch resolves, so this
  /// has to degrade rather than throw.
  List<Category> get _available => ref
      .read(categoriesProvider)
      .maybeWhen(data: (list) => list, orElse: () => const <Category>[]);

  List<Category> categoriesFor(TransactionType type) {
    final wantIncome = type == TransactionType.income;
    return _available.where((c) => c.isIncome == wantIncome).toList();
  }

  /// A safe starting category for [type].
  ///
  /// Falls back to a placeholder matching the seeded row of the same id, so a
  /// form opened before the categories land still has something coherent
  /// selected and still saves against a real category id.
  Category _defaultFor(TransactionType type) {
    final options = categoriesFor(type);
    if (options.isNotEmpty) return options.first;
    return type == TransactionType.income
        ? const Category(id: 'salary', name: 'Salary', icon: CategoryIcon.salary, isIncome: true)
        : const Category(id: 'other', name: 'Other', icon: CategoryIcon.other);
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
      // The row's own category is a real choice, not a placeholder to replace.
      categoryChosen: true,
    );
  }

  void setType(TransactionType type) {
    if (type == state.type) return;
    // The old category belongs to the other direction, so whatever was chosen
    // cannot carry over and the new one is a default again.
    state = state.copyWith(type: type, category: _defaultFor(type), categoryChosen: false);
  }

  void setCategory(Category category) =>
      state = state.copyWith(category: category, categoryChosen: true);

  void setDate(DateTime date) => state = state.copyWith(date: date);

  void setAmount(double amount) => state = state.copyWith(amount: amount);

  void setTitle(String title) => state = state.copyWith(title: title);

  void setNote(String note) => state = state.copyWith(note: note);

  /// Persists the draft and refreshes every derived figure in the app.
  ///
  /// Returns false on a failed write as well as on an invalid form, leaving the
  /// draft intact so the screen can report the failure and the user can retry
  /// without retyping. It previously let the exception escape, which stranded
  /// the form with its spinner running and no way back.
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

    try {
      if (draft.isEditing) {
        await repository.updateTransaction(transaction);
      } else {
        await repository.addTransaction(transaction);
      }
    } catch (_) {
      state = state.copyWith(isSaving: false);
      return false;
    }

    refreshFinanceData(ref);
    state = build();
    return true;
  }
}

final addTransactionControllerProvider =
    NotifierProvider<AddTransactionController, TransactionDraft>(AddTransactionController.new);

/// Deletes a transaction and refreshes the derived figures. Returns the
/// removed row so the caller can offer an undo.
final deleteTransactionProvider = Provider<Future<void> Function(Transaction)>((ref) {
  return (transaction) async {
    await ref.read(transactionRepositoryProvider).deleteTransaction(transaction.id);
    ref.invalidate(transactionsProvider);
  };
});

/// Re-inserts a previously deleted transaction, backing the undo action.
final restoreTransactionProvider = Provider<Future<void> Function(Transaction)>((ref) {
  return (Transaction transaction) async {
    // 1. Insert the transaction back into the ledger repository
    await ref.read(transactionRepositoryProvider).addTransaction(transaction);

    // 2. Refresh ledger providers so the home screen & list update immediately
    ref.invalidate(transactionsProvider);
    ref.invalidate(dashboardSummaryProvider);
  };
});

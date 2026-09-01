import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/settings/settings_providers.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/format_providers.dart';
import '../../../../core/widgets/editor_sheet.dart';
import '../../../financial/domain/entities/category.dart';
import '../../../financial/domain/entities/loan.dart';
import '../controllers/loan_controller.dart';

/// Opens the loan editor. Pass [loan] to edit an existing debt.
Future<void> showLoanEditor(BuildContext context, {Loan? loan}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (context) => _LoanEditorSheet(loan: loan),
  );
}

class _LoanEditorSheet extends ConsumerStatefulWidget {
  const _LoanEditorSheet({this.loan});

  final Loan? loan;

  @override
  ConsumerState<_LoanEditorSheet> createState() => _LoanEditorSheetState();
}

class _LoanEditorSheetState extends ConsumerState<_LoanEditorSheet> {
  late final TextEditingController _nameController;
  late final TextEditingController _lenderController;
  late final TextEditingController _principalController;
  late final TextEditingController _remainingController;
  late final TextEditingController _paymentController;
  late final TextEditingController _rateController;

  late String _name;
  late String _lender;
  late double _principal;
  late double _remaining;
  late double _payment;
  late double _rate;
  late LoanKind _kind;
  late DateTime _nextPayment;
  bool _busy = false;

  bool get _isEditing => widget.loan != null;

  bool get _isValid => _name.trim().isNotEmpty && _remaining > 0;

  @override
  void initState() {
    super.initState();
    final loan = widget.loan;

    _name = loan?.name ?? '';
    _lender = loan?.lender ?? '';
    _principal = loan?.principal ?? 0;
    _remaining = loan?.remaining ?? 0;
    _payment = loan?.monthlyPayment ?? 0;
    _rate = loan?.interestRate ?? 0;
    _kind = loan?.kind ?? LoanKind.loan;
    _nextPayment =
        loan?.nextPaymentDate ?? DateTime.now().add(const Duration(days: 30));

    _nameController = TextEditingController(text: _name);
    _lenderController = TextEditingController(text: _lender);
    _principalController = TextEditingController(text: _text(_principal));
    _remainingController = TextEditingController(text: _text(_remaining));
    _paymentController = TextEditingController(text: _text(_payment));
    _rateController = TextEditingController(
      text: _rate > 0 ? _rate.toString() : '',
    );
  }

  static String _text(double value) =>
      value > 0 ? value.toStringAsFixed(0) : '';

  @override
  void dispose() {
    _nameController.dispose();
    _lenderController.dispose();
    _principalController.dispose();
    _remainingController.dispose();
    _paymentController.dispose();
    _rateController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _nextPayment,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 30),
    );
    if (picked != null) setState(() => _nextPayment = picked);
  }

  Future<void> _save() async {
    setState(() => _busy = true);
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    final loan = Loan(
      id: widget.loan?.id ?? 'loan-${DateTime.now().microsecondsSinceEpoch}',
      name: _name.trim(),
      lender: _lender.trim(),
      kind: _kind,
      // A debt entered without an original amount is treated as fully
      // outstanding, so the payoff bar starts at zero rather than complete.
      principal: _principal > 0 ? _principal : _remaining,
      remaining: _remaining,
      monthlyPayment: _payment,
      nextPaymentDate: _nextPayment,
      interestRate: _rate,
      icon: _kind == LoanKind.creditCard
          ? CategoryIcon.other
          : CategoryIcon.transport,
    );

    await ref.read(loanControllerProvider).save(loan);

    navigator.pop();
    messenger.showSnackBar(SnackBar(content: Text(l10n.debtSaved)));
  }

  Future<void> _delete() async {
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteDebt),
        content: Text(l10n.deleteDebtBody(widget.loan!.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    setState(() => _busy = true);
    await ref.read(loanControllerProvider).delete(widget.loan!.id);

    navigator.pop();
    messenger.showSnackBar(SnackBar(content: Text(l10n.debtDeleted)));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final dates = ref.watch(dateFormatterProvider);
    final symbol = ref.watch(currencyProvider).symbol;
    final isCard = _kind == LoanKind.creditCard;

    return EditorSheet(
      title: _isEditing ? l10n.editDebt : l10n.newDebt,
      submitLabel: l10n.save,
      accent: AppColors.primaryDark,
      onSubmit: _isValid ? _save : null,
      onDelete: _isEditing ? _delete : null,
      deleteLabel: l10n.delete,
      isBusy: _busy,
      children: [
        SheetField(
          label: '',
          child: _KindToggle(
            kind: _kind,
            onChanged: (kind) => setState(() => _kind = kind),
          ),
        ),
        SheetField(
          label: l10n.debtName,
          child: TextField(
            controller: _nameController,
            autofocus: !_isEditing,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(hintText: l10n.debtNameHint),
            onChanged: (value) => setState(() => _name = value),
          ),
        ),
        SheetField(
          label: l10n.lender,
          child: TextField(
            controller: _lenderController,
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(hintText: l10n.lenderHint),
            onChanged: (value) => _lender = value,
          ),
        ),
        SheetField(
          label: l10n.remainingBalance,
          child: AmountField(
            controller: _remainingController,
            symbol: symbol,
            onChanged: (value) => setState(() => _remaining = value),
          ),
        ),
        SheetField(
          label: isCard ? l10n.creditLimit : l10n.originalAmount,
          child: AmountField(
            controller: _principalController,
            symbol: symbol,
            onChanged: (value) => setState(() => _principal = value),
          ),
        ),
        SheetField(
          label: l10n.monthlyPayment,
          child: AmountField(
            controller: _paymentController,
            symbol: symbol,
            onChanged: (value) => setState(() => _payment = value),
          ),
        ),
        SheetField(
          label: l10n.interestRatePercent,
          child: TextField(
            controller: _rateController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d*[.,]?\d{0,2}')),
            ],
            decoration: const InputDecoration(hintText: '0.0'),
            onChanged: (value) =>
                _rate = double.tryParse(value.replaceAll(',', '.')) ?? 0,
          ),
        ),
        SheetField(
          label: l10n.nextPayment,
          child: InkWell(
            onTap: _pickDate,
            borderRadius: BorderRadius.circular(AppRadius.md),
            child: InputDecorator(
              decoration: const InputDecoration(),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    size: 18,
                    color: context.textSecondary,
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Text(
                    dates.long(_nextPayment),
                    style: AppTypography.title.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _KindToggle extends StatelessWidget {
  const _KindToggle({required this.kind, required this.onChanged});

  final LoanKind kind;
  final ValueChanged<LoanKind> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);

    Widget option(LoanKind value, String label, IconData icon) {
      final selected = kind == value;
      return Expanded(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => onChanged(value),
          child: AnimatedContainer(
            duration: AppDuration.fast,
            curve: Curves.easeOut,
            padding: const EdgeInsets.symmetric(vertical: 11),
            decoration: BoxDecoration(
              color: selected ? AppColors.primaryDark : Colors.transparent,
              borderRadius: BorderRadius.circular(AppRadius.sm),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 17,
                  color: selected ? Colors.white : context.textSecondary,
                ),
                const SizedBox(width: AppSpacing.sm),
                Text(
                  label,
                  style: AppTypography.title.copyWith(
                    color: selected ? Colors.white : context.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: context.subtleFill,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Row(
        children: [
          option(LoanKind.loan, l10n.kindLoan, Icons.account_balance_rounded),
          option(
            LoanKind.creditCard,
            l10n.kindCreditCard,
            Icons.credit_card_rounded,
          ),
        ],
      ),
    );
  }
}

/// Records a repayment against a debt: reduces the balance and rolls the due
/// date to the next cycle.
Future<void> showPaymentSheet(BuildContext context, Loan loan) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (context) => _PaymentSheet(loan: loan),
  );
}

class _PaymentSheet extends ConsumerStatefulWidget {
  const _PaymentSheet({required this.loan});

  final Loan loan;

  @override
  ConsumerState<_PaymentSheet> createState() => _PaymentSheetState();
}

class _PaymentSheetState extends ConsumerState<_PaymentSheet> {
  late final TextEditingController _controller;
  late double _amount;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _amount = widget.loan.monthlyPayment;
    _controller = TextEditingController(
      text: _amount > 0 ? _amount.toStringAsFixed(0) : '',
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setAmount(double value) {
    setState(() => _amount = value);
    _controller.text = value.toStringAsFixed(0);
  }

  Future<void> _submit() async {
    setState(() => _busy = true);
    final l10n = AppL10n.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    await ref
        .read(loanControllerProvider)
        .recordPayment(widget.loan.id, _amount);

    navigator.pop();
    messenger.showSnackBar(SnackBar(content: Text(l10n.paymentRecorded)));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context);
    final money = ref.watch(moneyFormatterProvider);
    final symbol = ref.watch(currencyProvider).symbol;

    final presets = <double>{
      widget.loan.monthlyPayment,
      widget.loan.monthlyPayment * 2,
      widget.loan.remaining,
    }.where((value) => value > 0).toList()
      ..sort();

    return EditorSheet(
      title: l10n.recordPayment,
      subtitle: '${widget.loan.name} · '
          '${money.format(widget.loan.remaining, decimals: false)} '
          '${l10n.remaining.toLowerCase()}',
      submitLabel: l10n.recordPayment,
      accent: AppColors.primaryDark,
      onSubmit: _amount > 0 ? _submit : null,
      isBusy: _busy,
      children: [
        SheetField(
          label: l10n.amount,
          child: AmountField(
            controller: _controller,
            symbol: symbol,
            autofocus: true,
            onChanged: (value) => setState(() => _amount = value),
          ),
        ),
        Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          children: [
            for (final preset in presets)
              ActionChip(
                label: Text(money.format(preset, decimals: false)),
                onPressed: () => _setAmount(preset),
                backgroundColor: context.tintFill,
                side: BorderSide(color: context.borderColor),
                labelStyle:
                    AppTypography.label.copyWith(color: AppColors.primary),
              ),
          ],
        ),
      ],
    );
  }
}

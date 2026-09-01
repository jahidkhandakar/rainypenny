// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppL10nTr extends AppL10n {
  AppL10nTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Kara gün için biriktir';

  @override
  String get navHome => 'Ana sayfa';

  @override
  String get navTransactions => 'İşlemler';

  @override
  String get navAdd => 'Ekle';

  @override
  String get navReports => 'Raporlar';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Günaydın, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'İyi günler, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'İyi akşamlar, $name';
  }

  @override
  String get greetingSubtitle => 'İşte finansal özetin';

  @override
  String get totalBalance => 'Toplam bakiye';

  @override
  String get vsLastPeriod => 'önceki döneme göre';

  @override
  String get income => 'Gelir';

  @override
  String get expenses => 'Gider';

  @override
  String get netBalance => 'Net bakiye';

  @override
  String get lastThirtyDays => 'Son 30 gün';

  @override
  String get quickActions => 'Hızlı işlemler';

  @override
  String get addIncome => 'Gelir ekle';

  @override
  String get addExpense => 'Gider ekle';

  @override
  String get spendingOverview => 'Harcama özeti';

  @override
  String get recentTransactions => 'Son işlemler';

  @override
  String get seeAll => 'Tümünü gör';

  @override
  String get viewAll => 'Tümünü gör';

  @override
  String get budgetProgress => 'Bütçe durumu';

  @override
  String get savingsGoals => 'Birikim hedefleri';

  @override
  String get financialInsight => 'Finansal içgörü';

  @override
  String get financialHealth => 'Finansal sağlık';

  @override
  String ofTotal(String total) {
    return 'of $total';
  }

  @override
  String get searchTransactions => 'İşlemlerde ara';

  @override
  String get filterAll => 'Tümü';

  @override
  String get filterIncome => 'Gelir';

  @override
  String get filterExpenses => 'Gider';

  @override
  String get today => 'Bugün';

  @override
  String get yesterday => 'Dün';

  @override
  String get noTransactionsTitle => 'İşlem bulunamadı';

  @override
  String get noTransactionsBody => 'Farklı bir arama veya filtre deneyin.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transactions',
      one: '1 transaction',
      zero: 'No transactions',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'İşlem ekle';

  @override
  String get amount => 'Tutar';

  @override
  String get category => 'Kategori';

  @override
  String get date => 'Tarih';

  @override
  String get note => 'Not';

  @override
  String get noteHint => 'İsteğe bağlı not';

  @override
  String get saveIncome => 'Geliri kaydet';

  @override
  String get saveExpense => 'Gideri kaydet';

  @override
  String get selectCategory => 'Kategori seç';

  @override
  String get transactionSaved => 'İşlem kaydedildi';

  @override
  String get amountRequired => 'Enter an amount greater than zero';

  @override
  String get titleRequired => 'Give this transaction a name';

  @override
  String get descriptionLabel => 'Açıklama';

  @override
  String get descriptionHint => 'örn. Market';

  @override
  String get budget => 'Bütçe';

  @override
  String get budgets => 'Bütçeler';

  @override
  String get totalBudget => 'Toplam bütçe';

  @override
  String get spent => 'Harcanan';

  @override
  String get remaining => 'Kalan';

  @override
  String budgetUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get onTrack => 'Yolunda';

  @override
  String get approachingLimit => 'Limite yaklaşıyor';

  @override
  String get overBudget => 'Bütçe aşıldı';

  @override
  String get savings => 'Birikim';

  @override
  String get yourGoals => 'Hedeflerin';

  @override
  String get saved => 'Biriken';

  @override
  String get target => 'Hedef';

  @override
  String get monthlyContribution => 'Aylık';

  @override
  String get addFunds => 'Para ekle';

  @override
  String get goalComplete => 'Hedefe ulaşıldı';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months to go',
      one: '1 month to go',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Krediler ve borçlar';

  @override
  String get totalOutstanding => 'Toplam kalan borç';

  @override
  String get monthlyPayment => 'Aylık';

  @override
  String get nextPayment => 'Sonraki ödeme';

  @override
  String paidOff(int percent) {
    return '$percent% paid off';
  }

  @override
  String get interestRate => 'Faiz';

  @override
  String get upcomingPayments => 'Yaklaşan ödemeler';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Due in $count days',
      one: 'Due tomorrow',
      zero: 'Due today',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Gecikmiş';

  @override
  String get reports => 'Raporlar';

  @override
  String get week => 'Hafta';

  @override
  String get month => 'Ay';

  @override
  String get quarter => 'Çeyrek';

  @override
  String get incomeVsExpenses => 'Gelir ve gider';

  @override
  String get spendingByCategory => 'Kategoriye göre harcama';

  @override
  String get budgetPerformance => 'Bütçe performansı';

  @override
  String get insights => 'İçgörüler';

  @override
  String get savingsRate => 'Birikim oranı';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Hesap';

  @override
  String get personalInformation => 'Kişisel bilgiler';

  @override
  String get changePassword => 'Şifre değiştir';

  @override
  String get notifications => 'Bildirimler';

  @override
  String get preferences => 'Tercihler';

  @override
  String get language => 'Dil';

  @override
  String get currency => 'Para birimi';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Güvenlik';

  @override
  String get privacyAndSecurity => 'Gizlilik ve güvenlik';

  @override
  String get help => 'Yardım';

  @override
  String get helpAndSupport => 'Yardım ve destek';

  @override
  String get termsAndConditions => 'Şartlar ve koşullar';

  @override
  String get logOut => 'Çıkış yap';

  @override
  String memberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Açık';

  @override
  String get themeDark => 'Koyu';

  @override
  String get dashboard => 'Kontrol paneli';

  @override
  String get settings => 'Ayarlar';

  @override
  String get noNotificationsTitle => 'Her şey güncel';

  @override
  String get noNotificationsBody =>
      'Yeni içgörüler ve hatırlatmalar burada görünecek.';

  @override
  String get cancel => 'İptal';

  @override
  String get save => 'Kaydet';

  @override
  String get done => 'Tamam';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get close => 'Kapat';

  @override
  String get somethingWentWrong => 'Bir şeyler ters gitti';

  @override
  String get comingSoon => 'Yakında';
}

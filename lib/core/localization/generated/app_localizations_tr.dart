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
    return '/ $total';
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
      other: '$count işlem',
      one: '1 işlem',
      zero: 'İşlem yok',
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
  String get amountRequired => 'Sıfırdan büyük bir tutar girin';

  @override
  String get titleRequired => 'Bu işleme bir ad verin';

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
    return '%$percent kullanıldı';
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
      other: '$count ay kaldı',
      one: '1 ay kaldı',
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
    return '%$percent ödendi';
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
      other: '$count gün içinde ödenecek',
      one: 'Yarın ödenecek',
      zero: 'Bugün ödenecek',
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
    return '$date tarihinden beri üye';
  }

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Açık';

  @override
  String get themeDark => 'Koyu';

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

  @override
  String get edit => 'Düzenle';

  @override
  String get delete => 'Sil';

  @override
  String get undo => 'Geri al';

  @override
  String get add => 'Ekle';

  @override
  String get create => 'Oluştur';

  @override
  String get nameRequired => 'Buna bir ad verin';

  @override
  String get amountAboveZero => 'Sıfırdan büyük bir tutar girin';

  @override
  String get editTransaction => 'İşlemi düzenle';

  @override
  String get deleteTransaction => 'İşlem silinsin mi?';

  @override
  String deleteTransactionBody(String title) {
    return '$title kayıtlarınızdan kaldırılacak.';
  }

  @override
  String get transactionDeleted => 'İşlem silindi';

  @override
  String get transactionUpdated => 'İşlem güncellendi';

  @override
  String get newBudget => 'Yeni bütçe';

  @override
  String get editBudget => 'Bütçeyi düzenle';

  @override
  String get budgetLimit => 'Aylık limit';

  @override
  String get deleteBudget => 'Bütçe silinsin mi?';

  @override
  String deleteBudgetBody(String category) {
    return '$category bütçesi kaldırılacak. İşlemleriniz etkilenmez.';
  }

  @override
  String get budgetSaved => 'Bütçe kaydedildi';

  @override
  String get budgetDeleted => 'Bütçe silindi';

  @override
  String get allCategoriesBudgeted => 'Her kategorinin zaten bir bütçesi var';

  @override
  String get noBudgetsTitle => 'Henüz bütçe yok';

  @override
  String get noBudgetsBody =>
      'Takibe başlamak için bir kategoriye aylık limit belirleyin.';

  @override
  String get newGoal => 'Yeni hedef';

  @override
  String get editGoal => 'Hedefi düzenle';

  @override
  String get goalName => 'Hedef adı';

  @override
  String get goalNameHint => 'örn. Acil durum fonu';

  @override
  String get targetAmount => 'Hedef tutar';

  @override
  String get alreadySaved => 'Şimdiye kadar biriken';

  @override
  String get deleteGoal => 'Hedef silinsin mi?';

  @override
  String deleteGoalBody(String name) {
    return '$name ve ilerlemesi kaldırılacak.';
  }

  @override
  String get goalSaved => 'Hedef kaydedildi';

  @override
  String get goalDeleted => 'Hedef silindi';

  @override
  String get noGoalsTitle => 'Henüz birikim hedefi yok';

  @override
  String get noGoalsBody =>
      'Bir hedef belirleyin, RainyPenny ilerlemenizi takip etsin.';

  @override
  String get fundsAdded => 'Tutar eklendi';

  @override
  String get newDebt => 'Yeni kredi veya kart';

  @override
  String get editDebt => 'Krediyi düzenle';

  @override
  String get debtName => 'Ad';

  @override
  String get debtNameHint => 'örn. Taşıt kredisi';

  @override
  String get lender => 'Kredi veren';

  @override
  String get lenderHint => 'örn. Meridian Bankası';

  @override
  String get originalAmount => 'Anapara';

  @override
  String get creditLimit => 'Kredi limiti';

  @override
  String get remainingBalance => 'Kalan borç';

  @override
  String get interestRatePercent => 'Faiz oranı (%)';

  @override
  String get kindLoan => 'Kredi';

  @override
  String get kindCreditCard => 'Kredi kartı';

  @override
  String get recordPayment => 'Ödeme kaydet';

  @override
  String get paymentRecorded => 'Ödeme kaydedildi';

  @override
  String get deleteDebt => 'Bu borç silinsin mi?';

  @override
  String deleteDebtBody(String name) {
    return '$name borçlarınızdan kaldırılacak.';
  }

  @override
  String get debtSaved => 'Kaydedildi';

  @override
  String get debtDeleted => 'Silindi';

  @override
  String get noDebtsTitle => 'Takip edilen borç yok';

  @override
  String get noDebtsBody =>
      'Geri ödemeleri takip etmek için bir kredi veya kredi kartı ekleyin.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return '$subject bütçesi aşıldı';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Bu dönemde $subject bütçenizi $amount aştınız.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject limitine yaklaşıyor';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return '$subject bütçenizin %$percent kadarı kullanıldı, $amount kaldı.';
  }

  @override
  String get insightOverIncomeTitle => 'Harcamalar geliri aşıyor';

  @override
  String get insightOverIncomeBody =>
      'Bu dönemde kazandığınızdan fazlasını harcadınız. Dengeyi kurmak için en büyük kategorilerinize bakın.';

  @override
  String insightCategoryUpTitle(String subject) {
    return '$subject harcaması arttı';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return '$subject harcamanız önceki döneme göre %$percent daha yüksek.';
  }

  @override
  String get insightTrendDownTitle => 'Harcamalar düşüşte';

  @override
  String insightTrendDownBody(int percent) {
    return 'Toplam harcama önceki döneme göre %$percent daha düşük.';
  }

  @override
  String get insightTrendUpTitle => 'Harcamalar yükselişte';

  @override
  String insightTrendUpBody(int percent) {
    return 'Toplam harcama önceki döneme göre %$percent daha yüksek.';
  }

  @override
  String get insightSavingsStrongTitle => 'Bu dönem güçlü birikim';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Gelirinizin %$percent kadarını korudunuz — %$target hedefinin çok üzerinde.';
  }

  @override
  String get insightSavingsLowTitle => 'Birikim oranı hedefin altında';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Bu dönem gelirinizin %$percent kadarını korudunuz. %$target hedefleyin.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject neredeyse tamamlandı';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return '$subject hedefine ulaşmak için yalnızca $amount kaldı.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject için yolundasınız';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months ayda',
      one: '1 ayda',
    );
    return 'Ayda $amount ile bu hedefe $_temp0 ulaşacaksınız.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return '$subject ödemesi gecikti';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days gün',
      one: '1 gün',
    );
    return '$subject için $amount tutarındaki ödeme $_temp0 gecikti.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return '$subject ödemesi yaklaşıyor';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days gün içinde',
      one: 'yarın',
      zero: 'bugün',
    );
    return '$amount $_temp0 ödenecek.';
  }

  @override
  String get signIn => 'Giriş yap';

  @override
  String get signUp => 'Hesap oluştur';

  @override
  String get signInSubtitle => 'Tekrar hoş geldiniz. Paranız sizi bekliyor.';

  @override
  String get signUpSubtitle => 'Birkaç bilgi ve hazırsınız.';

  @override
  String get emailLabel => 'E-posta';

  @override
  String get emailHint => 'siz@email.com';

  @override
  String get passwordLabel => 'Parola';

  @override
  String get passwordHint => 'En az 8 karakter';

  @override
  String get fullNameLabel => 'Ad soyad';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Parolanızı mı unuttunuz?';

  @override
  String get resetSent => 'Sıfırlama bağlantısı için e-postanızı kontrol edin';

  @override
  String get noAccountYet => 'Yeni misiniz?';

  @override
  String get haveAccount => 'Zaten hesabınız var mı?';

  @override
  String get emailInvalid => 'Geçerli bir e-posta adresi girin';

  @override
  String get passwordTooShort => 'En az 8 karakter kullanın';

  @override
  String get signOutConfirm => 'Çıkış yapılsın mı?';

  @override
  String get signOutBody =>
      'Finanslarınızı görmek için tekrar giriş yapmanız gerekecek.';

  @override
  String get dataSource => 'Veri kaynağı';

  @override
  String get insightWeeklySummaryTitle => 'Haftanızın özeti';

  @override
  String get insightWeeklySummaryBody =>
      'Bu hafta paranızın nereye gittiğini ve bütçelerinizin durumunu görün.';

  @override
  String get notificationSettings => 'Bildirimler';

  @override
  String get alertsSection => 'Uyarılar';

  @override
  String get budgetAlerts => 'Bütçe uyarıları';

  @override
  String get budgetAlertsBody =>
      'Bir bütçe limitine yaklaştığında veya aştığında';

  @override
  String get paymentReminders => 'Ödeme hatırlatmaları';

  @override
  String get paymentRemindersBody => 'Bir ödemenin vadesinden birkaç gün önce';

  @override
  String get savingsUpdates => 'Birikim güncellemeleri';

  @override
  String get savingsUpdatesBody => 'Hedeflerinize doğru ilerlemeniz';

  @override
  String get weeklySummaryLabel => 'Haftalık özet';

  @override
  String get weeklySummaryBody => 'Geçen haftanın özeti';

  @override
  String get scheduleSection => 'Zamanlama';

  @override
  String get reminderTime => 'Hatırlatma saati';

  @override
  String get quietHours => 'Sessiz saatler';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Özet günü';

  @override
  String get permissionRequired => 'Bildirimler kapalı';

  @override
  String get permissionRequiredBody =>
      'RainyPenny\'nin bir bütçe veya ödeme elinizden kaçmadan sizi uyarabilmesi için bildirimlere izin verin.';

  @override
  String get allowNotifications => 'Bildirimlere izin ver';

  @override
  String get permissionDenied =>
      'Bildirimler engellenmiş. Cihaz ayarlarınızdan açabilirsiniz.';

  @override
  String get upcomingAlerts => 'Planlanan';

  @override
  String get noScheduledAlerts => 'Şu anda planlanmış bir şey yok';

  @override
  String get noScheduledAlertsBody =>
      'Bütçeleriniz ve ödemeleriniz sınırlarına yaklaştıkça uyarılar burada görünür.';

  @override
  String scheduledFor(String date) {
    return '$date için planlandı';
  }

  @override
  String get everyWeek => 'Her hafta';

  @override
  String get allNotificationsOff => 'Tüm bildirimler kapalı';

  @override
  String get needsAttention => 'Dikkat gerekiyor';

  @override
  String get quickActionsTitle => 'Ne yapmak istersiniz?';

  @override
  String get createSection => 'Kaydet';

  @override
  String get jumpToSection => 'Şuraya git';

  @override
  String get addLoanAction => 'Kredi ekle';

  @override
  String get addBudgetAction => 'Bütçe ekle';

  @override
  String get addGoalAction => 'Hedef ekle';

  @override
  String get longPressHint =>
      'İpucu: bir harcamayı hemen kaydetmek için + tuşunu basılı tutun';

  @override
  String get searchCurrencies => 'Para birimi ara';

  @override
  String get noCurrenciesFound => 'Para birimi bulunamadı';

  @override
  String get noCurrenciesFoundMessage =>
      'Farklı bir kod, simge veya ad deneyin.';

  @override
  String get popularCurrencies => 'Yaygın';

  @override
  String get allCurrencies => 'Tüm para birimleri';

  @override
  String get totalLoanAmount => 'Toplam kredi tutarı';

  @override
  String get installmentAmount => 'Taksit tutarı';

  @override
  String get numberOfInstallments => 'Taksit sayısı';

  @override
  String get paidInstallments => 'Ödenen taksitler';

  @override
  String get remainingInstallments => 'Kalan taksitler';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$total taksitin $paid tanesi ödendi';
  }

  @override
  String get finalPayment => 'Son ödeme';

  @override
  String get paymentDueDate => 'Ödeme vadesi';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Her ayın $day. günü';
  }

  @override
  String get loanStatus => 'Durum';

  @override
  String get statusActive => 'Yolunda';

  @override
  String get statusDueSoon => 'Yakında ödenecek';

  @override
  String get statusOverdue => 'Gecikmiş';

  @override
  String get statusCompleted => 'Kapandı';

  @override
  String get repaymentProgress => 'Geri ödeme ilerlemesi';

  @override
  String get byAmount => 'Tutara göre';

  @override
  String get byInstallments => 'Taksite göre';

  @override
  String get startDate => 'Başlangıç tarihi';

  @override
  String get openEnded => 'Süresiz';

  @override
  String get loanDetails => 'Kredi ayrıntıları';

  @override
  String get notSet => 'Belirlenmedi';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject bugün ödenecek';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return '$amount tutarındaki ödemeniz bugün vadesinde. Tek dokunuşla zamanında kalır.';
  }

  @override
  String get remindMorningTitle => 'Günaydın ☀️';

  @override
  String get remindMorningBody =>
      'Güne paranıza hâkim başlayın. Dünden eklenecek bir şey var mı?';

  @override
  String get remindNoonTitle => 'Öğle kontrolü';

  @override
  String get remindNoonBody =>
      'Yemek, kahve, bir bilet? Saniyeler içinde ekleyin.';

  @override
  String get remindAfternoonTitle => 'Kısa bir gözden geçirme';

  @override
  String get remindAfternoonBody =>
      'Şimdiye kadar harcadıklarınızı girin, gün doğru kalsın.';

  @override
  String get remindEveningTitle => 'Günü kapatırken';

  @override
  String get remindEveningBody =>
      'Şimdi iki dakika ve bugünün rakamları tamamlanır.';

  @override
  String get happyWeekendTitle => 'İyi hafta sonları! 🎉';

  @override
  String get happyWeekendBody =>
      'Keyfini çıkarın — ve hafta sonu harcamalarına göz atın.';

  @override
  String get dailyReminders => 'Günlük harcama hatırlatmaları';

  @override
  String get dailyRemindersBody =>
      'Harcamalarınızı güncel tutmanız için dostça hatırlatmalar';

  @override
  String get weekendGreeting => 'İyi hafta sonları';

  @override
  String get weekendGreetingBody => 'Hafta sonunuzun başında dostça bir selam';

  @override
  String get reminderTimesSection => 'Hatırlatma saatleri';

  @override
  String get slotMorning => 'Sabah';

  @override
  String get slotNoon => 'Öğle';

  @override
  String get slotAfternoon => 'İkindi';

  @override
  String get slotEvening => 'Akşam';

  @override
  String get everyDay => 'Her gün';

  @override
  String get financialReport => 'Finansal Rapor';

  @override
  String get preparedFor => 'Hazırlanan kişi';

  @override
  String get generatedOn => 'Oluşturulma tarihi';

  @override
  String get reportDisclaimer =>
      'RainyPenny tarafından kendi kayıtlarınızdan oluşturuldu.';

  @override
  String pageOf(int page, int total) {
    return 'Sayfa $page / $total';
  }

  @override
  String get overview => 'Genel bakış';

  @override
  String get description => 'Açıklama';

  @override
  String get totalIncome => 'Toplam gelir';

  @override
  String get totalExpenses => 'Toplam gider';

  @override
  String get totalSaved => 'Toplam birikim';

  @override
  String get shareOfTotal => 'Pay';

  @override
  String get used => 'Kullanılan';

  @override
  String get goal => 'Hedef';

  @override
  String get targetDate => 'Hedef tarih';

  @override
  String get progress => 'İlerleme';

  @override
  String get paidOffShort => 'Ödenen';

  @override
  String get transactions => 'İşlemler';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 've $count işlem daha',
      one: 've 1 işlem daha',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'PDF olarak dışa aktar';

  @override
  String get sharePdf => 'Raporu paylaş';

  @override
  String get preparingReport => 'Raporunuz hazırlanıyor…';

  @override
  String get reportReady => 'Rapor hazır';

  @override
  String get reportFailed => 'Rapor oluşturulamadı';

  @override
  String get categories => 'Kategoriler';

  @override
  String get categoriesIntro =>
      'Gelir ve giderleri tam da düşündüğünüz gibi ayırmak için kendi kategorilerinizi ekleyin.';

  @override
  String get expenseCategories => 'Gider kategorileri';

  @override
  String get incomeCategories => 'Gelir kategorileri';

  @override
  String get newCategory => 'Yeni kategori';

  @override
  String get editCategory => 'Kategoriyi düzenle';

  @override
  String get categoryName => 'Ad';

  @override
  String get categoryNameHint => 'örn. Evcil hayvan bakımı';

  @override
  String get icon => 'Simge';

  @override
  String get categorySaved => 'Kategori kaydedildi';

  @override
  String get categoryDeleted => 'Kategori silindi';

  @override
  String get deleteCategory => 'Bu kategori silinsin mi?';

  @override
  String deleteCategoryBody(String name) {
    return '$name kategorilerinizden kaldırılacak.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kayıt hâlâ bu kategoriyi kullanıyor',
      one: '1 kayıt hâlâ bu kategoriyi kullanıyor',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Burada henüz bir şey yok.';

  @override
  String get builtIn => 'Yerleşik';

  @override
  String get manageCategories => 'Kategorileri yönet';

  @override
  String get expense => 'Gider';

  @override
  String get languageNote =>
      'Arapça, Urduca, Farsça ve İbranice arayüzün tamamını sağdan sola çevirir; grafikler ve PDF raporlar dahil.';

  @override
  String get next => 'İleri';

  @override
  String get back => 'Geri';

  @override
  String get skip => 'Atla';

  @override
  String get continueLabel => 'Devam';

  @override
  String get selected => 'Seçili';

  @override
  String get passwordRequired => 'Parolanızı girin';

  @override
  String get newPasswordLabel => 'Yeni parola';

  @override
  String get confirmPasswordLabel => 'Parolayı doğrulayın';

  @override
  String get passwordsDoNotMatch => 'İki parola aynı olmalı';

  @override
  String get showPassword => 'Parolayı göster';

  @override
  String get hidePassword => 'Parolayı gizle';

  @override
  String get savePassword => 'Parolayı kaydet';

  @override
  String get backToSignIn => 'Girişe dön';

  @override
  String get alreadyHaveAccount => 'Zaten hesabım var';

  @override
  String get getStarted => 'Başlayalım';

  @override
  String get acceptTerms =>
      'Hizmet Şartları’nı ve Gizlilik Politikası’nı kabul ediyorum';

  @override
  String get acceptTermsRequired => 'Devam etmek için kabul edin';

  @override
  String get passwordStrengthTooShort => 'Çok kısa';

  @override
  String get passwordStrengthWeak => 'Zayıf';

  @override
  String get passwordStrengthFair => 'Orta';

  @override
  String get passwordStrengthGood => 'İyi';

  @override
  String get passwordStrengthStrong => 'Güçlü';

  @override
  String get passwordAdvice =>
      'Hatırlayacağınız uzun bir ifade, sembollerle dolu kısa bir paroladan iyidir. Başka bir yerde kullandığınız hiçbir şeyi seçmeyin.';

  @override
  String get authInvalidCredentials =>
      'Bu e-posta ve parola hiçbir hesapla eşleşmiyor';

  @override
  String get authEmailNotConfirmed =>
      'Giriş yapmadan önce e-posta adresinizi doğrulayın';

  @override
  String get authEmailAlreadyRegistered => 'Bu e-posta ile bir hesap zaten var';

  @override
  String get authWeakPassword => 'Daha uzun bir parola seçin';

  @override
  String get authRateLimited =>
      'Çok fazla deneme. Birkaç dakika sonra tekrar deneyin';

  @override
  String get authNetworkError =>
      'Bağlantı yok. Ağınızı kontrol edip tekrar deneyin';

  @override
  String get authGenericError => 'Bir şeyler ters gitti. Lütfen tekrar deneyin';

  @override
  String get confirmEmailTitle => 'E-postanızı kontrol edin';

  @override
  String confirmEmailBody(String email) {
    return '$email adresine bir doğrulama bağlantısı gönderdik. Hesabınızı tamamlamak için açın.';
  }

  @override
  String get resendConfirmation => 'Doğrulama e-postasını yeniden gönder';

  @override
  String get confirmationResent => 'Doğrulama e-postası gönderildi';

  @override
  String get forgotPasswordTitle => 'Parolanızı sıfırlayın';

  @override
  String get forgotPasswordSubtitle =>
      'Kayıt olduğunuz e-postayı girin, yeni bir parola seçmeniz için size bağlantı gönderelim.';

  @override
  String get sendResetLink => 'Sıfırlama bağlantısı gönder';

  @override
  String get resetLinkSentTitle => 'Bağlantı gönderildi';

  @override
  String resetLinkSentBody(String email) {
    return '$email adresine ait bir hesap varsa, sıfırlama bağlantısı yolda.';
  }

  @override
  String get resetLinkSentHint =>
      'Bağlantı bir saat içinde geçersiz olur. Gelmezse, yenisini istemeden önce gereksiz klasörüne bakın.';

  @override
  String get tryAnotherEmail => 'Başka e-posta kullan';

  @override
  String get resetPasswordTitle => 'Yeni bir parola seçin';

  @override
  String get resetPasswordSubtitle =>
      'Bu hesapta daha önce kullanmadığınız bir şey seçin.';

  @override
  String get passwordChangedTitle => 'Parola güncellendi';

  @override
  String get passwordChangedBody =>
      'Yeni parolanız kaydedildi. Giriş yaptınız, her şey hazır.';

  @override
  String get demoModeHint => 'Demo sürüm — hesap gerekmez';

  @override
  String get demoModeFill => 'Doldur';

  @override
  String get welcomeTrackTitle => 'Paranızın nereye gittiğini görün';

  @override
  String get welcomeTrackBody =>
      'Gireni ve çıkanı kaydedin. RainyPenny bunu gerçekten okunabilir bir tabloya dönüştürür.';

  @override
  String get welcomeBudgetTitle => 'Tutan sınırlar koyun';

  @override
  String get welcomeBudgetBody =>
      'Harcamanızın her kalemine aylık bir tavan koyun; aşmadan önce haberiniz olsun, sonra değil.';

  @override
  String get welcomeGoalsTitle => 'Önemli olan için biriktirin';

  @override
  String get welcomeGoalsBody =>
      'Bir hedefe ad verin, tutarı belirleyin ve dolmasını izleyin. Zor gün fonu, görüldüğünde daha kolay birikir.';

  @override
  String get welcomePrivacyTitle => 'Paranız sizin kalır';

  @override
  String get welcomePrivacyBody =>
      'Rakamlarınız yalnızca size ait. Hiçbir şey satılmaz, hiçbir şey kimseyle paylaşılmaz.';

  @override
  String stepOf(int step, int total) {
    return 'Adım $step / $total';
  }

  @override
  String get onboardingNameTitle => 'Size nasıl hitap edelim?';

  @override
  String get onboardingNameBody =>
      'Yalnızca selamlamak için kullanacağız, başka hiçbir yerde değil.';

  @override
  String get onboardingNameHint => 'Ad yeterli. Sonra değiştirebilirsiniz.';

  @override
  String get onboardingCurrencyTitle => 'Hangi para birimini kullanıyorsunuz?';

  @override
  String get onboardingCurrencyBody =>
      'Uygulamadaki tüm tutarlar bu para biriminde gösterilir. Seçmek hiçbir şeyi çevirmez.';

  @override
  String get onboardingCurrencySearch => 'Tüm para birimlerinde ara';

  @override
  String get onboardingAppearanceTitle => 'Kendinize göre yapın';

  @override
  String get onboardingAppearanceBody =>
      'Bir görünüm seçin. Dokundukça her şey değişir, dilediğiniz zaman geri dönebilirsiniz.';

  @override
  String get onboardingNotificationsTitle => 'Takipte kalın';

  @override
  String get onboardingNotificationsBody =>
      'Doğru anda gelen sessiz bir hatırlatma, bunu alışkanlığa dönüştüren şeydir.';

  @override
  String get onboardingNotifyReminders =>
      'Harcamanızı kaydetmeniz için nazik bir hatırlatma';

  @override
  String get onboardingNotifyBudget => 'Bir bütçe bitmeden önce uyarı';

  @override
  String get onboardingNotifySummary =>
      'Paranızın nereye gittiğine dair haftalık özet';

  @override
  String get onboardingNotifyEnable => 'Bildirimleri aç';

  @override
  String get onboardingNotifyDone => 'Bildirim ayarları kaydedildi';

  @override
  String get onboardingNotifyLater =>
      'Bunların hepsini Ayarlar’dan, dilediğiniz zaman değiştirebilirsiniz.';

  @override
  String get onboardingReadyTitle => 'Her şey hazır';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Her şey hazır, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Kurulum bitti. Nasıl çalıştığına dair kısa bir tur ister misiniz?';

  @override
  String get onboardingTakeTour => 'Gezdir beni';

  @override
  String get onboardingGoToApp => 'Uygulamaya git';

  @override
  String get onboardingTourLater =>
      'Şimdi değil mi? Rehber, istediğiniz an için Ayarlar’da duruyor.';

  @override
  String get beginnersGuide => 'Yeni başlayanlar rehberi';

  @override
  String get guideFinish => 'Bitir';

  @override
  String chapterOf(int number, int total) {
    return 'Bölüm $number / $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return '$screen ekranını aç';
  }

  @override
  String get guideDashboardTitle => 'Panonuz';

  @override
  String get guideDashboardBody =>
      'Her şey burada başlar. Üstteki kart elinizde kalanı gösterir; altında bu dönem giren ve çıkan, ardından harcamalarınız, bütçeleriniz ve hedefleriniz.';

  @override
  String get guideDashboardTip1 =>
      'Her şeyi tek seferde yenilemek için ekranı aşağı çekin.';

  @override
  String get guideDashboardTip2 =>
      'O listeye doğrudan gitmek için gelir veya gider kartına dokunun.';

  @override
  String get guideDashboardTip3 =>
      'Bir şey kaydettiğiniz anda halkalar ve içgörüler güncellenir.';

  @override
  String get guideAddTitle => 'Para kaydetmek';

  @override
  String get guideAddBody =>
      'Çubuğun ortasındaki düğme her şeyin başladığı yerdir. Kısa bir menü açar: gider, gelir, borç, bütçe veya birikim hedefi.';

  @override
  String get guideAddTip1 =>
      'Gelir veya gider kaydetmek için ortadaki düğmeye dokunun.';

  @override
  String get guideAddTip2 =>
      'Menüyü atlayıp doğrudan yeni bir gidere geçmek için basılı tutun.';

  @override
  String get guideAddTip3 =>
      'Her zaman bir kategori seçin — grafikleri ve bütçeleri çalıştıran şey budur.';

  @override
  String get guideCategoriesTitle => 'Kategoriler';

  @override
  String get guideCategoriesBody =>
      'Kategoriler harcamalarınızı gruplar. Uygulamayla gelenler çoğu kişiye yeter; adlarını değiştirebilir ya da kendinizinkini ekleyebilirsiniz.';

  @override
  String get guideCategoriesTip1 =>
      'Değiştirmek veya eklemek için Ayarlar, sonra Kategorileri yönet.';

  @override
  String get guideCategoriesTip2 =>
      'Kategorisiz kalan her şey «Diğer»e düşer, böylece grafikler dürüst kalır.';

  @override
  String get guideBudgetTitle => 'Bütçeler';

  @override
  String get guideBudgetBody =>
      'Bütçe, tek bir kategori için aylık tavandır. Harcadıkça çubuk dolar, sınıra yaklaşınca rengi değişir; yani aşmadan önce haberiniz olur.';

  @override
  String get guideBudgetTip1 =>
      'Hepsiyle birden değil, iki üç kategoriyle başlayın.';

  @override
  String get guideBudgetTip2 =>
      'Sınırı her zamanki harcamanızın biraz üstüne koyun, sonra daraltın.';

  @override
  String get guideBudgetTip3 =>
      'Bütçe uyarılarını açık bırakın, uygulama bütçe azalırken sizi uyarsın.';

  @override
  String get guideSavingsTitle => 'Birikim hedefleri';

  @override
  String get guideSavingsBody =>
      'Ne için biriktirdiğinize ad verin, tutar ve tarih belirleyin; uygulama her ay ne kadar ayırmanız gerektiğini hesaplasın.';

  @override
  String get guideSavingsTip1 =>
      'Adı olan bir hedefi sürdürmek, belirsiz bir birikim niyetinden kolaydır.';

  @override
  String get guideSavingsTip2 =>
      'Birkaç küçük hedef, tek bir büyük hedeften daha sık tamamlanır.';

  @override
  String get guideLoansTitle => 'Borçlar ve krediler';

  @override
  String get guideLoansBody =>
      'Ne borcunuz olduğunu, size neye mal olduğunu ve bir sonraki ödemenin ne zaman geldiğini kaydedin. Ödediğiniz her şey, kalan tutarıyla tek listede durur.';

  @override
  String get guideLoansTip1 =>
      'Vade tarihini ekleyin, ödeme hatırlatmaları takibini sizin yerinize yapsın.';

  @override
  String get guideLoansTip2 =>
      'Geciken bir borç, ödenene kadar panoda kırmızı görünür.';

  @override
  String get guideReportsTitle => 'Raporlar';

  @override
  String get guideReportsBody =>
      'Daha derin bakış: gelire karşı gider, kategoriye göre harcama, bütçelerinizin nasıl tuttuğu ve gelirinizin ne kadarını elinizde tuttuğunuz.';

  @override
  String get guideReportsTip1 =>
      'Ekranın üstünden hafta, ay ve çeyrek arasında geçiş yapın.';

  @override
  String get guideReportsTip2 =>
      'PDF olarak dışa aktarın ya da paylaşın — kendi dilinizde ve yazı yönünüzde çıkar.';

  @override
  String get guideSettingsTitle => 'Ayarlar';

  @override
  String get guideSettingsBody =>
      'Dil, para birimi, renkler ve uyarılar hep burada; hiçbiri kurulumla sabitlenmez — dilediğinizi dilediğiniz zaman değiştirin.';

  @override
  String get guideSettingsTip1 =>
      'Kırk dil ve sağdan sola yazılanlar için baştan sona aynalanan bir yerleşim.';

  @override
  String get guideSettingsTip2 =>
      'Hangi uyarıları istediğinizi ve hangi saatlerde gelebileceğini seçin.';

  @override
  String get guideSettingsTip3 =>
      'Sessiz saatler her şeyi sabaha kadar bekletir.';

  @override
  String get guideHabitTitle => 'Alışkanlığa dönüştürün';

  @override
  String get guideHabitBody =>
      'Uygulama, içine koyduğunuz kadar iyidir. Günde bir dakika, ayda bir saatten iyidir; iki hafta sonra rakamlar size bir şey söylemeye başlar.';

  @override
  String get guideHabitTip1 =>
      'Harcamayı o anda kaydedin, hafta sonunda değil.';

  @override
  String get guideHabitTip2 =>
      'Günde bir kez panoya göz atın. On saniye yeter.';

  @override
  String get guideHabitTip3 =>
      'Bu rehber Ayarlar’da kalır — istediğiniz zaman dönün.';

  @override
  String get appearance => 'Görünüm';

  @override
  String get themeCaption => 'Açık, koyu ya da telefonunuz ne yapıyorsa o.';

  @override
  String get accentColor => 'Vurgu rengi';

  @override
  String get accentColorCaption =>
      'Düğmeleri, vurguları ve grafikleri renklendirir.';

  @override
  String get accentSemanticsNote =>
      'Gelir ve gider her temada kendi renklerini korur; yani vurgu rengini değiştirdiniz diye hiçbir rakamın anlamı değişmez.';

  @override
  String get accentTeal => 'Turkuaz';

  @override
  String get accentGreen => 'Yeşil';

  @override
  String get accentSky => 'Gök mavisi';

  @override
  String get accentBlue => 'Mavi';

  @override
  String get accentIndigo => 'Çivit';

  @override
  String get accentViolet => 'Menekşe';

  @override
  String get accentPink => 'Pembe';

  @override
  String get accentCrimson => 'Kızıl';

  @override
  String get accentOrange => 'Turuncu';

  @override
  String get accentSlate => 'Arduvaz';

  @override
  String get searchLanguages => 'Dil ara';

  @override
  String get suggestedLanguages => 'Önerilen';

  @override
  String get allLanguages => 'Tüm diller';

  @override
  String get noLanguagesFound => 'Dil bulunamadı';

  @override
  String get noLanguagesFoundMessage =>
      'İngilizce adını ya da iki harfli kodu deneyin.';

  @override
  String get rightToLeft => 'Sağdan sola';

  @override
  String get replayGuide => 'Rehberi yeniden izle';

  @override
  String get replaySetup => 'Kurulumu tekrarla';

  @override
  String get replaySetupBody =>
      'İlk kurulum sorularından yeniden geçin. Kaydettiğiniz hiçbir şey silinmez.';

  @override
  String get rateTitle => 'RainyPenny hoşunuza gidiyor mu?';

  @override
  String get rateBody =>
      'Bir süredir bunu sürdürüyorsunuz. Puan vermek bir anınızı alır ve başkalarının uygulamayı bulmasına yardımcı olur.';

  @override
  String get rateAction => 'Uygulamayı puanla';

  @override
  String get rateLater => 'Belki sonra';

  @override
  String get rateNever => 'Hayır, teşekkürler';

  @override
  String get rateThanks => 'Teşekkürler';

  @override
  String get monthlySalary => 'Aylık maaş';

  @override
  String get remainingAmount => 'Kalan';

  @override
  String get carriedForward => 'Devreden';

  @override
  String get carriedForwardHint => 'Önceki döngüden kalan';

  @override
  String get totalSpending => 'Toplam harcama';

  @override
  String get salaryCycle => 'Maaş döngüsü';

  @override
  String get payday => 'Maaş günü';

  @override
  String get paydayDescription =>
      'Maaşınızın yattığı gün. Mali ayınız bu günden bir sonraki maaş gününden önceki güne kadar sürer.';

  @override
  String get paydayUpdated => 'Maaş günü güncellendi';

  @override
  String paydayDayOfMonth(int day) {
    return '$day. gün';
  }

  @override
  String get paydayShortMonthNote =>
      'Kısa aylarda döngü ayın son gününde başlar.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Maaşa $count gün',
      one: 'Maaşa 1 gün',
      zero: 'Döngünün son günü',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Sonraki maaş';

  @override
  String get spentSoFar => 'Şu ana kadar harcanan';

  @override
  String get dailyAllowance => 'Güvenli günlük harcama';

  @override
  String get overspentNotice => 'Bu döngüde girenden fazlasını harcadınız.';

  @override
  String get backToThisMonth => 'Bu aya dön';

  @override
  String get cycleRangeLabel => 'Döngü';

  @override
  String get noSalaryRecorded => 'Henüz maaş kaydı yok';

  @override
  String get addSalaryAction => 'Maaşınızı ekleyin';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Mükemmel';

  @override
  String get healthGood => 'İyi';

  @override
  String get healthFair => 'Orta';

  @override
  String get healthNeedsWork => 'Geliştirilmeli';

  @override
  String get healthExcellentBody =>
      'İyi birikim yapıyor ve bütçelerinizin içinde kalıyorsunuz.';

  @override
  String get healthGoodBody => 'Bu dönemde harcamalarınız yolunda.';

  @override
  String get healthFairBody =>
      'Bazı bütçeler sınıra yaklaşıyor. Küçük değişiklikler yeterli olur.';

  @override
  String get healthNeedsWorkBody =>
      'Harcamalar planınızı aşıyor. En büyük kategorinizden başlayın.';

  @override
  String get factorSavingsRate => 'Birikim oranı';

  @override
  String get factorBudgetControl => 'Bütçe kontrolü';

  @override
  String get factorDebtLoad => 'Borç yükü';

  @override
  String get factorSpendingTrend => 'Harcama eğilimi';

  @override
  String factorKept(String percent) {
    return '%$percent korundu';
  }

  @override
  String factorUsed(String percent) {
    return '%$percent kullanıldı';
  }

  @override
  String factorOfIncome(String percent) {
    return 'Gelirin %$percent kadarı';
  }

  @override
  String factorTrendUp(String percent) {
    return '%$percent artış';
  }

  @override
  String factorTrendDown(String percent) {
    return '%$percent azalış';
  }

  @override
  String get howScoreWorks => 'Bu puan nasıl hesaplanır';

  @override
  String get healthScoreExplainer =>
      'Puanınız dört şeyi birleştirir: gelirinizin ne kadarını koruduğunuz, bütçelerinizde ne kadar kaldığınız, gelirinizin ne kadarının borca gittiği ve harcamalarınızın artıp artmadığı.';

  @override
  String scoreWeightLabel(int percent) {
    return 'Puanın %$percent kadarı';
  }

  @override
  String get viewHealthDetails => 'Ayrıntıyı gör';

  @override
  String get saveChanges => 'Değişiklikleri kaydet';

  @override
  String get profileUpdated => 'Profil güncellendi';

  @override
  String get changePhoto => 'Fotoğrafı değiştir';

  @override
  String get removePhoto => 'Fotoğrafı kaldır';

  @override
  String get personalInformationIntro =>
      'Adınız ve fotoğrafınız uygulamanın her yerinde görünür. E-postanız giriş yaptığınız adrestir.';

  @override
  String get emailNotEditable =>
      'Giriş adresinizi değiştirmek için destek ile iletişime geçin.';

  @override
  String get pressBackAgainToExit => 'Çıkmak için tekrar geri tuşuna basın';

  @override
  String get categoryHousing => 'Konut';

  @override
  String get categoryFood => 'Yeme ve içme';

  @override
  String get categoryTransport => 'Ulaşım';

  @override
  String get categoryShopping => 'Alışveriş';

  @override
  String get categoryBills => 'Faturalar ve hizmetler';

  @override
  String get categoryEntertainment => 'Eğlence';

  @override
  String get categoryHealth => 'Sağlık ve spor';

  @override
  String get categoryEducation => 'Eğitim';

  @override
  String get categoryTravel => 'Seyahat';

  @override
  String get categoryOther => 'Diğer';

  @override
  String get categorySalary => 'Maaş';

  @override
  String get categoryFreelance => 'Serbest çalışma';

  @override
  String get categoryInvestments => 'Yatırımlar';

  @override
  String get categoryRefunds => 'İadeler ve hediyeler';

  @override
  String get addCategory => 'Yeni kategori';

  @override
  String get filterByCategory => 'Kategoriye göre filtrele';

  @override
  String get allCategories => 'Tüm kategoriler';

  @override
  String get clearFilters => 'Filtreleri temizle';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Tüm zamanlar';

  @override
  String get customRange => 'Özel';

  @override
  String get selectDateRange => 'Dönem seçin';

  @override
  String rangeApplied(String start, String end) {
    return '$start – $end gösteriliyor';
  }
}

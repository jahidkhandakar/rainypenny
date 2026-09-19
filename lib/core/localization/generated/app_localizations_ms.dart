// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppL10nMs extends AppL10n {
  AppL10nMs([String locale = 'ms']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Simpan untuk hari hujan';

  @override
  String get navHome => 'Utama';

  @override
  String get navTransactions => 'Transaksi';

  @override
  String get navAdd => 'Tambah';

  @override
  String get navReports => 'Laporan';

  @override
  String get navProfile => 'Profil';

  @override
  String greetingMorning(String name) {
    return 'Selamat pagi, $name';
  }

  @override
  String greetingAfternoon(String name) {
    return 'Selamat tengah hari, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Selamat malam, $name';
  }

  @override
  String get greetingSubtitle => 'Inilah gambaran kewangan anda';

  @override
  String get totalBalance => 'Jumlah baki';

  @override
  String get vsLastPeriod => 'berbanding tempoh lalu';

  @override
  String get income => 'Pendapatan';

  @override
  String get expenses => 'Perbelanjaan';

  @override
  String get netBalance => 'Baki bersih';

  @override
  String get lastThirtyDays => '30 hari lalu';

  @override
  String get quickActions => 'Tindakan pantas';

  @override
  String get addIncome => 'Tambah pendapatan';

  @override
  String get addExpense => 'Tambah perbelanjaan';

  @override
  String get spendingOverview => 'Gambaran perbelanjaan';

  @override
  String get recentTransactions => 'Transaksi terkini';

  @override
  String get seeAll => 'Lihat semua';

  @override
  String get viewAll => 'Papar semua';

  @override
  String get budgetProgress => 'Kemajuan bajet';

  @override
  String get savingsGoals => 'Matlamat simpanan';

  @override
  String get financialInsight => 'Pandangan kewangan';

  @override
  String get financialHealth => 'Kesihatan kewangan';

  @override
  String ofTotal(String total) {
    return 'daripada $total';
  }

  @override
  String get searchTransactions => 'Cari transaksi';

  @override
  String get filterAll => 'Semua';

  @override
  String get filterIncome => 'Pendapatan';

  @override
  String get filterExpenses => 'Perbelanjaan';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Semalam';

  @override
  String get noTransactionsTitle => 'Tiada transaksi ditemui';

  @override
  String get noTransactionsBody =>
      'Cuba carian atau penapis lain untuk melihat lebih banyak rekod.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaksi',
      zero: 'Tiada transaksi',
    );
    return '$_temp0';
  }

  @override
  String get addTransaction => 'Tambah transaksi';

  @override
  String get amount => 'Jumlah';

  @override
  String get category => 'Kategori';

  @override
  String get date => 'Tarikh';

  @override
  String get note => 'Nota';

  @override
  String get noteHint => 'Nota (pilihan)';

  @override
  String get saveIncome => 'Simpan pendapatan';

  @override
  String get saveExpense => 'Simpan perbelanjaan';

  @override
  String get selectCategory => 'Pilih kategori';

  @override
  String get transactionSaved => 'Transaksi disimpan';

  @override
  String get amountRequired => 'Masukkan jumlah lebih daripada sifar';

  @override
  String get titleRequired => 'Beri nama kepada transaksi ini';

  @override
  String get descriptionLabel => 'Keterangan';

  @override
  String get descriptionHint => 'cth. barang dapur';

  @override
  String get budget => 'Bajet';

  @override
  String get budgets => 'Bajet';

  @override
  String get totalBudget => 'Jumlah bajet';

  @override
  String get spent => 'Dibelanjakan';

  @override
  String get remaining => 'Baki';

  @override
  String budgetUsed(int percent) {
    return '$percent% digunakan';
  }

  @override
  String get onTrack => 'Mengikut rancangan';

  @override
  String get approachingLimit => 'Menghampiri had';

  @override
  String get overBudget => 'Melebihi bajet';

  @override
  String get savings => 'Simpanan';

  @override
  String get yourGoals => 'Matlamat anda';

  @override
  String get saved => 'Disimpan';

  @override
  String get target => 'Sasaran';

  @override
  String get monthlyContribution => 'Sebulan';

  @override
  String get addFunds => 'Tambah dana';

  @override
  String get goalComplete => 'Matlamat dicapai';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bulan lagi',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Pinjaman & hutang';

  @override
  String get totalOutstanding => 'Jumlah tertunggak';

  @override
  String get monthlyPayment => 'Sebulan';

  @override
  String get nextPayment => 'Bayaran seterusnya';

  @override
  String paidOff(int percent) {
    return '$percent% dijelaskan';
  }

  @override
  String get interestRate => 'Faedah';

  @override
  String get upcomingPayments => 'Bayaran akan datang';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Perlu dibayar dalam $count hari',
      one: 'Perlu dibayar esok',
      zero: 'Perlu dibayar hari ini',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Tertunggak';

  @override
  String get reports => 'Laporan';

  @override
  String get week => 'Minggu';

  @override
  String get month => 'Bulan';

  @override
  String get quarter => 'Suku tahun';

  @override
  String get incomeVsExpenses => 'Pendapatan lawan perbelanjaan';

  @override
  String get spendingByCategory => 'Perbelanjaan mengikut kategori';

  @override
  String get budgetPerformance => 'Prestasi bajet';

  @override
  String get insights => 'Pandangan';

  @override
  String get savingsRate => 'Kadar simpanan';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Akaun';

  @override
  String get personalInformation => 'Maklumat peribadi';

  @override
  String get changePassword => 'Tukar kata laluan';

  @override
  String get notifications => 'Pemberitahuan';

  @override
  String get preferences => 'Keutamaan';

  @override
  String get language => 'Bahasa';

  @override
  String get currency => 'Mata wang';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Keselamatan';

  @override
  String get privacyAndSecurity => 'Privasi & keselamatan';

  @override
  String get help => 'Bantuan';

  @override
  String get helpAndSupport => 'Bantuan & sokongan';

  @override
  String get termsAndConditions => 'Terma & syarat';

  @override
  String get logOut => 'Log keluar';

  @override
  String memberSince(String date) {
    return 'Ahli sejak $date';
  }

  @override
  String get themeSystem => 'Ikut sistem';

  @override
  String get themeLight => 'Cerah';

  @override
  String get themeDark => 'Gelap';

  @override
  String get settings => 'Tetapan';

  @override
  String get noNotificationsTitle => 'Semuanya sudah dibaca';

  @override
  String get noNotificationsBody =>
      'Pandangan dan peringatan baharu akan muncul di sini.';

  @override
  String get cancel => 'Batal';

  @override
  String get save => 'Simpan';

  @override
  String get done => 'Selesai';

  @override
  String get retry => 'Cuba lagi';

  @override
  String get close => 'Tutup';

  @override
  String get somethingWentWrong => 'Ada sesuatu yang tidak kena';

  @override
  String get comingSoon => 'Akan hadir dalam versi penuh';

  @override
  String get edit => 'Sunting';

  @override
  String get delete => 'Padam';

  @override
  String get undo => 'Buat asal';

  @override
  String get add => 'Tambah';

  @override
  String get create => 'Cipta';

  @override
  String get nameRequired => 'Beri nama kepada ini';

  @override
  String get amountAboveZero => 'Masukkan jumlah lebih daripada sifar';

  @override
  String get editTransaction => 'Sunting transaksi';

  @override
  String get deleteTransaction => 'Padam transaksi?';

  @override
  String deleteTransactionBody(String title) {
    return '$title akan dibuang daripada rekod anda.';
  }

  @override
  String get transactionDeleted => 'Transaksi dipadam';

  @override
  String get transactionUpdated => 'Transaksi dikemas kini';

  @override
  String get newBudget => 'Bajet baharu';

  @override
  String get editBudget => 'Sunting bajet';

  @override
  String get budgetLimit => 'Had bulanan';

  @override
  String get deleteBudget => 'Padam bajet?';

  @override
  String deleteBudgetBody(String category) {
    return 'Bajet $category akan dibuang. Transaksi anda tidak terjejas.';
  }

  @override
  String get budgetSaved => 'Bajet disimpan';

  @override
  String get budgetDeleted => 'Bajet dipadam';

  @override
  String get allCategoriesBudgeted => 'Setiap kategori sudah mempunyai bajet';

  @override
  String get noBudgetsTitle => 'Belum ada bajet';

  @override
  String get noBudgetsBody =>
      'Tetapkan had bulanan pada sesuatu kategori untuk mula menjejakinya.';

  @override
  String get newGoal => 'Matlamat baharu';

  @override
  String get editGoal => 'Sunting matlamat';

  @override
  String get goalName => 'Nama matlamat';

  @override
  String get goalNameHint => 'cth. dana kecemasan';

  @override
  String get targetAmount => 'Jumlah sasaran';

  @override
  String get alreadySaved => 'Sudah disimpan';

  @override
  String get deleteGoal => 'Padam matlamat?';

  @override
  String deleteGoalBody(String name) {
    return '$name dan kemajuannya akan dibuang.';
  }

  @override
  String get goalSaved => 'Matlamat disimpan';

  @override
  String get goalDeleted => 'Matlamat dipadam';

  @override
  String get noGoalsTitle => 'Belum ada matlamat simpanan';

  @override
  String get noGoalsBody =>
      'Tetapkan sasaran dan RainyPenny akan menjejaki kemajuan anda.';

  @override
  String get fundsAdded => 'Dana ditambah';

  @override
  String get newDebt => 'Pinjaman atau kad baharu';

  @override
  String get editDebt => 'Sunting pinjaman';

  @override
  String get debtName => 'Nama';

  @override
  String get debtNameHint => 'cth. pinjaman kereta';

  @override
  String get lender => 'Pemberi pinjaman';

  @override
  String get lenderHint => 'cth. Maybank';

  @override
  String get originalAmount => 'Jumlah asal';

  @override
  String get creditLimit => 'Had kredit';

  @override
  String get remainingBalance => 'Baki tertunggak';

  @override
  String get interestRatePercent => 'Kadar faedah (%)';

  @override
  String get kindLoan => 'Pinjaman';

  @override
  String get kindCreditCard => 'Kad kredit';

  @override
  String get recordPayment => 'Rekod bayaran';

  @override
  String get paymentRecorded => 'Bayaran direkodkan';

  @override
  String get deleteDebt => 'Padam hutang ini?';

  @override
  String deleteDebtBody(String name) {
    return '$name akan dibuang daripada senarai hutang anda.';
  }

  @override
  String get debtSaved => 'Disimpan';

  @override
  String get debtDeleted => 'Dipadam';

  @override
  String get noDebtsTitle => 'Tiada hutang dijejaki';

  @override
  String get noDebtsBody =>
      'Tambah pinjaman atau kad kredit untuk memantau bayaran balik.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Bajet $subject melebihi had';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Anda melebihi bajet $subject sebanyak $amount bagi tempoh ini.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject menghampiri had';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Bajet $subject anda telah digunakan $percent%, tinggal $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Perbelanjaan melebihi pendapatan';

  @override
  String get insightOverIncomeBody =>
      'Tempoh ini anda berbelanja lebih daripada yang anda peroleh. Semak kategori terbesar untuk mengimbangkannya semula.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Perbelanjaan $subject meningkat';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Perbelanjaan $subject anda $percent% lebih tinggi berbanding tempoh sebelumnya.';
  }

  @override
  String get insightTrendDownTitle => 'Perbelanjaan menurun';

  @override
  String insightTrendDownBody(int percent) {
    return 'Perbelanjaan keseluruhan $percent% lebih rendah berbanding tempoh sebelumnya.';
  }

  @override
  String get insightTrendUpTitle => 'Perbelanjaan meningkat';

  @override
  String insightTrendUpBody(int percent) {
    return 'Perbelanjaan keseluruhan $percent% lebih tinggi berbanding tempoh sebelumnya.';
  }

  @override
  String get insightSavingsStrongTitle =>
      'Simpanan tempoh ini memberangsangkan';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Anda menyimpan $percent% daripada pendapatan — jauh melebihi sasaran $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Kadar simpanan di bawah sasaran';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Tempoh ini anda menyimpan $percent% daripada pendapatan. Sasarkan $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject hampir cukup';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Tinggal $amount lagi untuk mencapai $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject mengikut rancangan';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months bulan',
    );
    return 'Dengan $amount sebulan, anda akan mencapai matlamat ini dalam $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Bayaran $subject tertunggak';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari',
    );
    return 'Bayaran $amount bagi $subject sudah lewat $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Bayaran $subject menghampiri';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'dalam $days hari',
      one: 'esok',
      zero: 'hari ini',
    );
    return '$amount perlu dibayar $_temp0.';
  }

  @override
  String get signIn => 'Log masuk';

  @override
  String get signUp => 'Buka akaun';

  @override
  String get signInSubtitle => 'Selamat kembali. Wang anda sedang menunggu.';

  @override
  String get signUpSubtitle => 'Beberapa butiran sahaja dan anda sudah sedia.';

  @override
  String get emailLabel => 'E-mel';

  @override
  String get emailHint => 'anda@email.com';

  @override
  String get passwordLabel => 'Kata laluan';

  @override
  String get passwordHint => 'Sekurang-kurangnya 8 aksara';

  @override
  String get fullNameLabel => 'Nama penuh';

  @override
  String get fullNameHint => 'Ahmad Faizal';

  @override
  String get forgotPassword => 'Lupa kata laluan?';

  @override
  String get resetSent => 'Semak peti masuk anda untuk pautan tetapan semula';

  @override
  String get noAccountYet => 'Baharu di sini?';

  @override
  String get haveAccount => 'Sudah ada akaun?';

  @override
  String get emailInvalid => 'Masukkan alamat e-mel yang sah';

  @override
  String get passwordTooShort => 'Gunakan sekurang-kurangnya 8 aksara';

  @override
  String get signOutConfirm => 'Log keluar?';

  @override
  String get signOutBody =>
      'Anda perlu log masuk semula untuk melihat kewangan anda.';

  @override
  String get dataSource => 'Sumber data';

  @override
  String get insightWeeklySummaryTitle => 'Minggu anda secara ringkas';

  @override
  String get insightWeeklySummaryBody =>
      'Lihat ke mana wang anda pergi minggu ini dan bagaimana bajet anda bertahan.';

  @override
  String get notificationSettings => 'Pemberitahuan';

  @override
  String get alertsSection => 'Amaran';

  @override
  String get budgetAlerts => 'Amaran bajet';

  @override
  String get budgetAlertsBody =>
      'Apabila bajet menghampiri atau melepasi hadnya';

  @override
  String get paymentReminders => 'Peringatan bayaran';

  @override
  String get paymentRemindersBody =>
      'Beberapa hari sebelum bayaran perlu dijelaskan';

  @override
  String get savingsUpdates => 'Berita simpanan';

  @override
  String get savingsUpdatesBody => 'Kemajuan ke arah matlamat anda';

  @override
  String get weeklySummaryLabel => 'Ringkasan mingguan';

  @override
  String get weeklySummaryBody => 'Rumusan minggu yang baru berlalu';

  @override
  String get scheduleSection => 'Masa';

  @override
  String get reminderTime => 'Waktu peringatan';

  @override
  String get quietHours => 'Waktu senyap';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Hari ringkasan';

  @override
  String get permissionRequired => 'Pemberitahuan dimatikan';

  @override
  String get permissionRequiredBody =>
      'Benarkan pemberitahuan supaya RainyPenny boleh memberi amaran sebelum bajet atau bayaran terlepas daripada kawalan.';

  @override
  String get allowNotifications => 'Benarkan pemberitahuan';

  @override
  String get permissionDenied =>
      'Pemberitahuan disekat. Anda boleh menghidupkannya dalam tetapan peranti.';

  @override
  String get upcomingAlerts => 'Dijadualkan';

  @override
  String get noScheduledAlerts => 'Tiada apa-apa dijadualkan buat masa ini';

  @override
  String get noScheduledAlertsBody =>
      'Amaran akan muncul di sini apabila bajet dan bayaran anda menghampiri hadnya.';

  @override
  String scheduledFor(String date) {
    return 'Dijadualkan pada $date';
  }

  @override
  String get everyWeek => 'Setiap minggu';

  @override
  String get allNotificationsOff => 'Semua pemberitahuan dimatikan';

  @override
  String get needsAttention => 'Perlu perhatian';

  @override
  String get quickActionsTitle => 'Apa yang anda mahu lakukan?';

  @override
  String get createSection => 'Rekod';

  @override
  String get jumpToSection => 'Pergi ke';

  @override
  String get addLoanAction => 'Tambah pinjaman';

  @override
  String get addBudgetAction => 'Tambah bajet';

  @override
  String get addGoalAction => 'Tambah matlamat';

  @override
  String get longPressHint =>
      'Petua: tekan lama + untuk terus merekod perbelanjaan';

  @override
  String get searchCurrencies => 'Cari mata wang';

  @override
  String get noCurrenciesFound => 'Tiada mata wang ditemui';

  @override
  String get noCurrenciesFoundMessage => 'Cuba kod, simbol atau nama lain.';

  @override
  String get popularCurrencies => 'Popular';

  @override
  String get allCurrencies => 'Semua mata wang';

  @override
  String get totalLoanAmount => 'Jumlah pinjaman';

  @override
  String get installmentAmount => 'Jumlah ansuran';

  @override
  String get numberOfInstallments => 'Bilangan ansuran';

  @override
  String get paidInstallments => 'Ansuran dibayar';

  @override
  String get remainingInstallments => 'Ansuran berbaki';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid daripada $total dibayar';
  }

  @override
  String get finalPayment => 'Bayaran akhir';

  @override
  String get paymentDueDate => 'Tarikh bayaran';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Hari ke-$day setiap bulan';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'Mengikut rancangan';

  @override
  String get statusDueSoon => 'Hampir tempoh';

  @override
  String get statusOverdue => 'Tertunggak';

  @override
  String get statusCompleted => 'Selesai dibayar';

  @override
  String get repaymentProgress => 'Kemajuan bayaran balik';

  @override
  String get byAmount => 'Ikut jumlah';

  @override
  String get byInstallments => 'Ikut ansuran';

  @override
  String get startDate => 'Tarikh mula';

  @override
  String get openEnded => 'Tanpa tempoh tamat';

  @override
  String get loanDetails => 'Butiran pinjaman';

  @override
  String get notSet => 'Belum ditetapkan';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject perlu dibayar hari ini';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Bayaran $amount anda perlu dijelaskan hari ini. Satu ketikan sudah memadai.';
  }

  @override
  String get remindMorningTitle => 'Selamat pagi ☀️';

  @override
  String get remindMorningBody =>
      'Mulakan hari dengan wang anda terkawal. Ada apa-apa dari semalam untuk ditambah?';

  @override
  String get remindNoonTitle => 'Semakan tengah hari';

  @override
  String get remindNoonBody =>
      'Makan tengah hari, kopi, tambang? Rekod dalam beberapa saat sahaja.';

  @override
  String get remindAfternoonTitle => 'Kemas kini pantas';

  @override
  String get remindAfternoonBody =>
      'Rekod apa yang anda belanjakan setakat ini supaya angka hari ini tepat.';

  @override
  String get remindEveningTitle => 'Menutup hari';

  @override
  String get remindEveningBody =>
      'Dua minit sekarang dan angka hari ini sudah lengkap.';

  @override
  String get happyWeekendTitle => 'Selamat hujung minggu! 🎉';

  @override
  String get happyWeekendBody =>
      'Nikmatinya — dan perhatikan sedikit perbelanjaan hujung minggu.';

  @override
  String get dailyReminders => 'Peringatan perbelanjaan harian';

  @override
  String get dailyRemindersBody =>
      'Dorongan lembut supaya perbelanjaan sentiasa terkini';

  @override
  String get weekendGreeting => 'Salam hujung minggu';

  @override
  String get weekendGreetingBody =>
      'Salam mesra pada permulaan hujung minggu anda';

  @override
  String get reminderTimesSection => 'Waktu peringatan';

  @override
  String get slotMorning => 'Pagi';

  @override
  String get slotNoon => 'Tengah hari';

  @override
  String get slotAfternoon => 'Petang';

  @override
  String get slotEvening => 'Malam';

  @override
  String get everyDay => 'Setiap hari';

  @override
  String get financialReport => 'Laporan Kewangan';

  @override
  String get preparedFor => 'Disediakan untuk';

  @override
  String get generatedOn => 'Dijana pada';

  @override
  String get reportDisclaimer =>
      'Dijana oleh RainyPenny daripada rekod anda sendiri.';

  @override
  String pageOf(int page, int total) {
    return 'Halaman $page daripada $total';
  }

  @override
  String get overview => 'Gambaran keseluruhan';

  @override
  String get description => 'Keterangan';

  @override
  String get totalIncome => 'Jumlah pendapatan';

  @override
  String get totalExpenses => 'Jumlah perbelanjaan';

  @override
  String get totalSaved => 'Jumlah simpanan';

  @override
  String get shareOfTotal => 'Bahagian';

  @override
  String get used => 'Digunakan';

  @override
  String get goal => 'Matlamat';

  @override
  String get targetDate => 'Tarikh sasaran';

  @override
  String get progress => 'Kemajuan';

  @override
  String get paidOffShort => 'Dibayar';

  @override
  String get transactions => 'Transaksi';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dan $count transaksi lagi',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Eksport PDF';

  @override
  String get sharePdf => 'Kongsi laporan';

  @override
  String get preparingReport => 'Menyediakan laporan anda…';

  @override
  String get reportReady => 'Laporan sedia';

  @override
  String get reportFailed => 'Laporan tidak dapat dijana';

  @override
  String get categories => 'Kategori';

  @override
  String get categoriesIntro =>
      'Tambah kategori anda sendiri supaya pendapatan dan perbelanjaan tersusun tepat seperti cara anda memikirkannya.';

  @override
  String get expenseCategories => 'Kategori perbelanjaan';

  @override
  String get incomeCategories => 'Kategori pendapatan';

  @override
  String get newCategory => 'Kategori baharu';

  @override
  String get editCategory => 'Sunting kategori';

  @override
  String get categoryName => 'Nama';

  @override
  String get categoryNameHint => 'cth. haiwan peliharaan';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategori disimpan';

  @override
  String get categoryDeleted => 'Kategori dipadam';

  @override
  String get deleteCategory => 'Padam kategori ini?';

  @override
  String deleteCategoryBody(String name) {
    return '$name akan dibuang daripada kategori anda.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rekod masih menggunakan kategori ini',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Belum ada apa-apa di sini.';

  @override
  String get builtIn => 'Terbina dalam';

  @override
  String get manageCategories => 'Urus kategori';

  @override
  String get expense => 'Perbelanjaan';

  @override
  String get languageNote =>
      'Bahasa Arab, Urdu, Parsi dan Ibrani menukar keseluruhan antara muka kepada kanan-ke-kiri, termasuk carta dan laporan PDF.';

  @override
  String get next => 'Seterusnya';

  @override
  String get back => 'Kembali';

  @override
  String get skip => 'Langkau';

  @override
  String get continueLabel => 'Teruskan';

  @override
  String get selected => 'Dipilih';

  @override
  String get passwordRequired => 'Masukkan kata laluan anda';

  @override
  String get newPasswordLabel => 'Kata laluan baharu';

  @override
  String get confirmPasswordLabel => 'Sahkan kata laluan';

  @override
  String get passwordsDoNotMatch => 'Kedua-dua kata laluan mesti sama';

  @override
  String get showPassword => 'Tunjuk kata laluan';

  @override
  String get hidePassword => 'Sembunyikan kata laluan';

  @override
  String get savePassword => 'Simpan kata laluan';

  @override
  String get backToSignIn => 'Kembali ke log masuk';

  @override
  String get alreadyHaveAccount => 'Saya sudah ada akaun';

  @override
  String get getStarted => 'Mula';

  @override
  String get acceptTerms =>
      'Saya bersetuju dengan Terma Perkhidmatan dan Dasar Privasi';

  @override
  String get acceptTermsRequired => 'Sila setuju untuk meneruskan';

  @override
  String get passwordStrengthTooShort => 'Terlalu pendek';

  @override
  String get passwordStrengthWeak => 'Lemah';

  @override
  String get passwordStrengthFair => 'Sederhana';

  @override
  String get passwordStrengthGood => 'Baik';

  @override
  String get passwordStrengthStrong => 'Kuat';

  @override
  String get passwordAdvice =>
      'Frasa panjang yang anda ingat lebih baik daripada kata pendek penuh simbol. Elakkan apa-apa yang sudah anda gunakan di tempat lain.';

  @override
  String get authInvalidCredentials =>
      'E-mel dan kata laluan itu tidak sepadan dengan mana-mana akaun';

  @override
  String get authEmailNotConfirmed =>
      'Sahkan alamat e-mel anda sebelum log masuk';

  @override
  String get authEmailAlreadyRegistered => 'Akaun dengan e-mel ini sudah wujud';

  @override
  String get authWeakPassword => 'Pilih kata laluan yang lebih panjang';

  @override
  String get authRateLimited =>
      'Terlalu banyak percubaan. Cuba lagi dalam beberapa minit';

  @override
  String get authNetworkError =>
      'Tiada sambungan. Semak rangkaian anda dan cuba lagi';

  @override
  String get authGenericError => 'Ada sesuatu yang tidak kena. Sila cuba lagi';

  @override
  String get confirmEmailTitle => 'Semak e-mel anda';

  @override
  String confirmEmailBody(String email) {
    return 'Kami menghantar pautan pengesahan ke $email. Bukanya untuk melengkapkan akaun anda.';
  }

  @override
  String get resendConfirmation => 'Hantar semula e-mel pengesahan';

  @override
  String get confirmationResent => 'E-mel pengesahan dihantar';

  @override
  String get forgotPasswordTitle => 'Tetapkan semula kata laluan';

  @override
  String get forgotPasswordSubtitle =>
      'Masukkan e-mel yang anda gunakan semasa mendaftar dan kami akan menghantar pautan untuk memilih kata laluan baharu.';

  @override
  String get sendResetLink => 'Hantar pautan';

  @override
  String get resetLinkSentTitle => 'Pautan dihantar';

  @override
  String resetLinkSentBody(String email) {
    return 'Jika $email mempunyai akaun, pautannya sedang dalam perjalanan.';
  }

  @override
  String get resetLinkSentHint =>
      'Pautan tamat tempoh dalam sejam. Jika ia tidak sampai, semak folder spam sebelum meminta yang baharu.';

  @override
  String get tryAnotherEmail => 'Guna e-mel lain';

  @override
  String get resetPasswordTitle => 'Pilih kata laluan baharu';

  @override
  String get resetPasswordSubtitle =>
      'Pilih sesuatu yang belum pernah anda gunakan pada akaun ini.';

  @override
  String get passwordChangedTitle => 'Kata laluan dikemas kini';

  @override
  String get passwordChangedBody =>
      'Kata laluan baharu anda disimpan. Anda sudah log masuk dan sedia untuk teruskan.';

  @override
  String get demoModeHint => 'Versi demo — tiada akaun diperlukan';

  @override
  String get demoModeFill => 'Isikan';

  @override
  String get welcomeTrackTitle => 'Lihat ke mana wang anda pergi';

  @override
  String get welcomeTrackBody =>
      'Rekod apa yang masuk dan apa yang keluar. RainyPenny menjadikannya gambaran yang benar-benar boleh dibaca.';

  @override
  String get welcomeBudgetTitle => 'Had yang benar-benar bertahan';

  @override
  String get welcomeBudgetBody =>
      'Berikan setiap bahagian perbelanjaan anda siling bulanan, dan ketahuinya sebelum ia dilampaui, bukan selepasnya.';

  @override
  String get welcomeGoalsTitle => 'Simpan untuk yang penting';

  @override
  String get welcomeGoalsBody =>
      'Namakan satu matlamat, tetapkan jumlahnya, dan lihat ia terisi. Dana kecemasan lebih mudah dibina apabila anda dapat melihatnya.';

  @override
  String get welcomePrivacyTitle => 'Wang anda tetap milik anda';

  @override
  String get welcomePrivacyBody =>
      'Angka anda milik anda sahaja. Tiada apa yang dijual dan tiada apa yang dikongsi dengan sesiapa.';

  @override
  String stepOf(int step, int total) {
    return 'Langkah $step daripada $total';
  }

  @override
  String get onboardingNameTitle => 'Apa panggilan anda?';

  @override
  String get onboardingNameBody =>
      'Kami gunakannya untuk menyapa anda sahaja, tiada tempat lain.';

  @override
  String get onboardingNameHint =>
      'Nama pertama sudah memadai. Boleh diubah kemudian.';

  @override
  String get onboardingCurrencyTitle => 'Mata wang apa yang anda guna?';

  @override
  String get onboardingCurrencyBody =>
      'Semua jumlah dalam aplikasi dipaparkan dalam mata wang ini. Memilihnya tidak menukar nilai apa-apa.';

  @override
  String get onboardingCurrencySearch => 'Cari semua mata wang';

  @override
  String get onboardingAppearanceTitle => 'Jadikan ia milik anda';

  @override
  String get onboardingAppearanceBody =>
      'Pilih rupa. Semuanya berubah semasa anda menyentuh, dan anda boleh kembali bila-bila masa.';

  @override
  String get onboardingNotificationsTitle => 'Kekal terkawal';

  @override
  String get onboardingNotificationsBody =>
      'Satu dorongan senyap pada waktu yang tepat itulah yang menjadikannya tabiat.';

  @override
  String get onboardingNotifyReminders =>
      'Peringatan lembut untuk merekod perbelanjaan anda';

  @override
  String get onboardingNotifyBudget => 'Pemberitahuan sebelum bajet habis';

  @override
  String get onboardingNotifySummary =>
      'Ringkasan mingguan ke mana wang anda pergi';

  @override
  String get onboardingNotifyEnable => 'Hidupkan pemberitahuan';

  @override
  String get onboardingNotifyDone => 'Tetapan pemberitahuan disimpan';

  @override
  String get onboardingNotifyLater =>
      'Semua ini boleh anda ubah dalam Tetapan, bila-bila masa.';

  @override
  String get onboardingReadyTitle => 'Semuanya sedia';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Semuanya sedia, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Persediaan selesai. Mahu lawatan pantas tentang cara semuanya berfungsi?';

  @override
  String get onboardingTakeTour => 'Tunjukkan kepada saya';

  @override
  String get onboardingGoToApp => 'Bawa saya ke aplikasi';

  @override
  String get onboardingTourLater =>
      'Belum lagi? Panduan kekal dalam Tetapan, bila-bila anda mahu.';

  @override
  String get beginnersGuide => 'Panduan pemula';

  @override
  String get guideFinish => 'Selesai';

  @override
  String chapterOf(int number, int total) {
    return 'Bab $number daripada $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Buka $screen';
  }

  @override
  String get guideDashboardTitle => 'Halaman utama anda';

  @override
  String get guideDashboardBody =>
      'Semuanya bermula di sini. Kad di atas ialah baki yang anda ada; di bawahnya apa yang masuk dan keluar tempoh ini, kemudian perbelanjaan, bajet dan matlamat anda.';

  @override
  String get guideDashboardTip1 =>
      'Tarik skrin ke bawah untuk menyegarkan semuanya sekali gus.';

  @override
  String get guideDashboardTip2 =>
      'Ketik kad pendapatan atau perbelanjaan untuk terus ke senarai itu.';

  @override
  String get guideDashboardTip3 =>
      'Cincin dan pandangan dikemas kini sebaik anda merekod sesuatu.';

  @override
  String get guideAddTitle => 'Merekod wang';

  @override
  String get guideAddBody =>
      'Butang di tengah bar itulah permulaan segalanya. Ia membuka menu ringkas: perbelanjaan, pendapatan, hutang, bajet atau matlamat simpanan.';

  @override
  String get guideAddTip1 =>
      'Ketik butang tengah untuk merekod wang masuk atau keluar.';

  @override
  String get guideAddTip2 =>
      'Tekan lama untuk terus ke perbelanjaan baharu tanpa melalui menu.';

  @override
  String get guideAddTip3 =>
      'Sentiasa pilih kategori — itulah yang menjadikan carta dan bajet berfungsi.';

  @override
  String get guideCategoriesTitle => 'Kategori';

  @override
  String get guideCategoriesBody =>
      'Kategori ialah cara perbelanjaan dikumpulkan. Yang disertakan sudah memadai untuk kebanyakan orang, dan anda boleh menamakannya semula atau menambah sendiri.';

  @override
  String get guideCategoriesTip1 =>
      'Tetapan, kemudian Urus kategori, untuk mengubah atau menambah.';

  @override
  String get guideCategoriesTip2 =>
      'Apa-apa yang tiada kategori akan masuk «Lain-lain», supaya carta kekal jujur.';

  @override
  String get guideBudgetTitle => 'Bajet';

  @override
  String get guideBudgetBody =>
      'Bajet ialah siling bulanan untuk satu kategori. Bar terisi sambil anda berbelanja dan bertukar warna apabila menghampiri, jadi anda tahu sebelum melepasinya.';

  @override
  String get guideBudgetTip1 =>
      'Mulakan dengan dua atau tiga kategori, bukan semuanya sekali gus.';

  @override
  String get guideBudgetTip2 =>
      'Tetapkan had sedikit di atas perbelanjaan biasa anda, kemudian ketatkan.';

  @override
  String get guideBudgetTip3 =>
      'Biarkan amaran bajet hidup dan aplikasi akan memberi amaran apabila bajet menyusut.';

  @override
  String get guideSavingsTitle => 'Matlamat simpanan';

  @override
  String get guideSavingsBody =>
      'Namakan apa yang anda simpankan, tetapkan jumlah dan tarikh, dan aplikasi akan mengira berapa yang perlu diketepikan setiap bulan.';

  @override
  String get guideSavingsTip1 =>
      'Matlamat bernama lebih mudah dikekalkan daripada niat kabur untuk menyimpan.';

  @override
  String get guideSavingsTip2 =>
      'Beberapa matlamat kecil lebih kerap disiapkan berbanding satu yang besar.';

  @override
  String get guideLoansTitle => 'Hutang dan pinjaman';

  @override
  String get guideLoansBody =>
      'Rekod berapa hutang anda, berapa kosnya dan bila bayaran seterusnya. Semua yang sedang anda jelaskan berada dalam satu senarai bersama bakinya.';

  @override
  String get guideLoansTip1 =>
      'Masukkan tarikh bayaran dan peringatan akan mengejarnya untuk anda.';

  @override
  String get guideLoansTip2 =>
      'Hutang tertunggak dipaparkan merah di halaman utama sehingga dijelaskan.';

  @override
  String get guideReportsTitle => 'Laporan';

  @override
  String get guideReportsBody =>
      'Pandangan yang lebih mendalam: pendapatan lawan perbelanjaan, perbelanjaan mengikut kategori, sekuat mana bajet anda bertahan, dan berapa bahagian pendapatan yang tinggal.';

  @override
  String get guideReportsTip1 =>
      'Tukar antara minggu, bulan dan suku tahun di bahagian atas skrin.';

  @override
  String get guideReportsTip2 =>
      'Eksport atau kongsi PDF — ia keluar dalam bahasa dan arah bacaan anda sendiri.';

  @override
  String get guideSettingsTitle => 'Tetapan';

  @override
  String get guideSettingsBody =>
      'Bahasa, mata wang, warna dan amaran semuanya di sini, dan tiada satu pun terkunci oleh persediaan awal — ubah bila-bila anda mahu.';

  @override
  String get guideSettingsTip1 =>
      'Empat puluh bahasa, dan seluruh susun atur bercermin bagi bahasa kanan-ke-kiri.';

  @override
  String get guideSettingsTip2 =>
      'Pilih amaran yang anda mahu dan waktu ia boleh tiba.';

  @override
  String get guideSettingsTip3 =>
      'Waktu senyap menahan semuanya sehingga pagi.';

  @override
  String get guideHabitTitle => 'Jadikan ia kekal';

  @override
  String get guideHabitBody =>
      'Aplikasi ini hanya sebaik apa yang anda masukkan. Seminit sehari lebih baik daripada sejam sebulan, dan selepas dua minggu angka mula memberitahu anda sesuatu.';

  @override
  String get guideHabitTip1 =>
      'Rekod perbelanjaan ketika ia berlaku, bukan pada hujung minggu.';

  @override
  String get guideHabitTip2 =>
      'Lihat halaman utama sekali sehari. Sepuluh saat sudah memadai.';

  @override
  String get guideHabitTip3 =>
      'Panduan ini kekal dalam Tetapan — kembalilah bila-bila masa.';

  @override
  String get appearance => 'Penampilan';

  @override
  String get themeCaption => 'Cerah, gelap, atau ikut telefon anda.';

  @override
  String get accentColor => 'Warna aksen';

  @override
  String get accentColorCaption => 'Mewarnakan butang, sorotan dan carta.';

  @override
  String get accentSemanticsNote =>
      'Wang masuk dan wang keluar mengekalkan warnanya dalam setiap tema, jadi sesuatu angka tidak pernah bertukar makna hanya kerana anda menukar aksen.';

  @override
  String get accentTeal => 'Biru kehijauan';

  @override
  String get accentGreen => 'Hijau';

  @override
  String get accentSky => 'Biru langit';

  @override
  String get accentBlue => 'Biru';

  @override
  String get accentIndigo => 'Nila';

  @override
  String get accentViolet => 'Ungu';

  @override
  String get accentPink => 'Merah jambu';

  @override
  String get accentCrimson => 'Merah tua';

  @override
  String get accentOrange => 'Jingga';

  @override
  String get accentSlate => 'Kelabu batu';

  @override
  String get searchLanguages => 'Cari bahasa';

  @override
  String get suggestedLanguages => 'Dicadangkan';

  @override
  String get allLanguages => 'Semua bahasa';

  @override
  String get noLanguagesFound => 'Tiada bahasa ditemui';

  @override
  String get noLanguagesFoundMessage =>
      'Cuba namanya dalam bahasa Inggeris, atau kod dua huruf.';

  @override
  String get rightToLeft => 'Kanan ke kiri';

  @override
  String get replayGuide => 'Main semula panduan';

  @override
  String get replaySetup => 'Jalankan persediaan semula';

  @override
  String get replaySetupBody =>
      'Lalui semula soalan permulaan. Tiada apa yang anda rekodkan akan dipadam.';

  @override
  String get rateTitle => 'Suka menggunakan RainyPenny?';

  @override
  String get rateBody =>
      'Anda sudah agak lama menggunakannya. Memberi penilaian mengambil masa sebentar sahaja dan membantu orang lain menemui aplikasi ini.';

  @override
  String get rateAction => 'Nilai aplikasi';

  @override
  String get rateLater => 'Mungkin nanti';

  @override
  String get rateNever => 'Tidak, terima kasih';

  @override
  String get rateThanks => 'Terima kasih';

  @override
  String get monthlySalary => 'Monthly salary';

  @override
  String get remainingAmount => 'Remaining';

  @override
  String get carriedForward => 'Carried forward';

  @override
  String get carriedForwardHint => 'Left over from last cycle';

  @override
  String get totalSpending => 'Total spending';

  @override
  String get salaryCycle => 'Salary cycle';

  @override
  String get payday => 'Salary day';

  @override
  String get paydayDescription =>
      'The day your salary arrives. Your financial month runs from this day until the day before the next one.';

  @override
  String get paydayUpdated => 'Salary day updated';

  @override
  String paydayDayOfMonth(int day) {
    return 'Day $day';
  }

  @override
  String get paydayShortMonthNote =>
      'In shorter months the cycle starts on the last day instead.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days to payday',
      one: '1 day to payday',
      zero: 'Last day of the cycle',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Next payday';

  @override
  String get spentSoFar => 'Spent so far';

  @override
  String get dailyAllowance => 'Safe to spend daily';

  @override
  String get overspentNotice => 'You have spent more than came in this cycle.';

  @override
  String get backToThisMonth => 'Back to this month';

  @override
  String get cycleRangeLabel => 'Cycle';

  @override
  String get noSalaryRecorded => 'No salary recorded yet';

  @override
  String get addSalaryAction => 'Add your salary';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Excellent';

  @override
  String get healthGood => 'Good';

  @override
  String get healthFair => 'Fair';

  @override
  String get healthNeedsWork => 'Needs work';

  @override
  String get healthExcellentBody =>
      'You are saving well and staying inside your budgets.';

  @override
  String get healthGoodBody =>
      'You are on track with your spending this period.';

  @override
  String get healthFairBody =>
      'A few budgets are running hot. Small changes will help.';

  @override
  String get healthNeedsWorkBody =>
      'Spending is outpacing your plan. Start with your largest category.';

  @override
  String get factorSavingsRate => 'Savings rate';

  @override
  String get factorBudgetControl => 'Budget control';

  @override
  String get factorDebtLoad => 'Debt load';

  @override
  String get factorSpendingTrend => 'Spending trend';

  @override
  String factorKept(String percent) {
    return '$percent% kept';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% used';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% of income';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Up $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Down $percent%';
  }

  @override
  String get howScoreWorks => 'How this score works';

  @override
  String get healthScoreExplainer =>
      'Your score blends four things: how much of your income you keep, how well you stay inside your budgets, how much of your income goes to debt, and whether your spending is rising or falling.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% of the score';
  }

  @override
  String get viewHealthDetails => 'See the breakdown';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get profileUpdated => 'Profile updated';

  @override
  String get changePhoto => 'Change photo';

  @override
  String get removePhoto => 'Remove photo';

  @override
  String get personalInformationIntro =>
      'Your name and photo appear across the app. Your email is the address you sign in with.';

  @override
  String get emailNotEditable =>
      'Contact support to change the address you sign in with.';

  @override
  String get pressBackAgainToExit => 'Press back again to exit';

  @override
  String get categoryHousing => 'Housing';

  @override
  String get categoryFood => 'Food & Dining';

  @override
  String get categoryTransport => 'Transportation';

  @override
  String get categoryShopping => 'Shopping';

  @override
  String get categoryBills => 'Bills & Utilities';

  @override
  String get categoryEntertainment => 'Entertainment';

  @override
  String get categoryHealth => 'Health & Fitness';

  @override
  String get categoryEducation => 'Education';

  @override
  String get categoryTravel => 'Travel';

  @override
  String get categorySalary => 'Salary';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investments';

  @override
  String get categoryGift => 'Gift';

  @override
  String get categoryOther => 'Other';

  @override
  String get categoryGroceries => 'Groceries';

  @override
  String get categoryDining => 'Dining';

  @override
  String get categoryCoffee => 'Coffee';

  @override
  String get categoryUtilities => 'Utilities';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Phone';

  @override
  String get categoryInsurance => 'Insurance';

  @override
  String get categorySubscriptions => 'Subscriptions';

  @override
  String get categoryPersonalCare => 'Personal care';

  @override
  String get categoryClothing => 'Clothing';

  @override
  String get categoryElectronics => 'Electronics';

  @override
  String get categoryHomeSupplies => 'Home supplies';

  @override
  String get categoryPets => 'Pets';

  @override
  String get categoryChildcare => 'Childcare';

  @override
  String get categoryFamily => 'Family';

  @override
  String get categoryFitness => 'Fitness';

  @override
  String get categorySports => 'Sports';

  @override
  String get categoryMedicine => 'Medicine';

  @override
  String get categoryMedical => 'Medical';

  @override
  String get categoryCharity => 'Charity';

  @override
  String get categoryTaxes => 'Taxes';

  @override
  String get categoryFees => 'Fees';

  @override
  String get categoryDebt => 'Debt';

  @override
  String get categorySavings => 'Savings';

  @override
  String get categoryRepairs => 'Repairs';

  @override
  String get categoryCarMaintenance => 'Car maintenance';

  @override
  String get categoryFuel => 'Fuel';

  @override
  String get categoryParking => 'Parking';

  @override
  String get categoryPublicTransport => 'Public transport';

  @override
  String get categoryRent => 'Rent';

  @override
  String get categoryMortgage => 'Mortgage';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Commission';

  @override
  String get categoryPension => 'Pension';

  @override
  String get categoryInterest => 'Interest';

  @override
  String get categoryDividends => 'Dividends';

  @override
  String get categoryCashback => 'Cashback';

  @override
  String get categoryRefund => 'Refund';

  @override
  String get categoryRentalIncome => 'Rental income';

  @override
  String get addCategory => 'New category';

  @override
  String get filterByCategory => 'Filter by category';

  @override
  String get allCategories => 'All categories';

  @override
  String get clearFilters => 'Clear filters';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'All time';

  @override
  String get customRange => 'Custom';

  @override
  String get selectDateRange => 'Choose a period';

  @override
  String rangeApplied(String start, String end) {
    return 'Showing $start – $end';
  }
}

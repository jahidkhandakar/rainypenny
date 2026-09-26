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
  String get appTagline => 'Sediakan payung sebelum hujan';

  @override
  String get navHome => 'Laman Utama';

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
    return 'Selamat petang, $name';
  }

  @override
  String get greetingSubtitle =>
      'Berikut ialah gambaran keseluruhan kewangan anda';

  @override
  String get totalBalance => 'Jumlah baki';

  @override
  String get vsLastPeriod => 'berbanding tempoh lepas';

  @override
  String get income => 'Pendapatan';

  @override
  String get expenses => 'Perbelanjaan';

  @override
  String get netBalance => 'Baki bersih';

  @override
  String get lastThirtyDays => '30 hari lepas';

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
  String get budgetProgress => 'Kemajuan belanjawan';

  @override
  String get savingsGoals => 'Matlamat simpanan';

  @override
  String get financialInsight => 'Wawasan kewangan';

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
      'Cuba carian atau penapis lain untuk melihat lebih banyak aktiviti anda.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaksi',
      one: '1 transaksi',
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
  String get noteHint => 'Nota pilihan';

  @override
  String get saveIncome => 'Simpan pendapatan';

  @override
  String get saveExpense => 'Simpan perbelanjaan';

  @override
  String get selectCategory => 'Pilih kategori';

  @override
  String get transactionSaved => 'Transaksi disimpan';

  @override
  String get amountRequired => 'Masukkan jumlah lebih besar daripada sifar';

  @override
  String get titleRequired => 'Berikan nama untuk transaksi ini';

  @override
  String get descriptionLabel => 'Penerangan';

  @override
  String get descriptionHint => 'cth. Barang dapur';

  @override
  String get budget => 'Belanjawan';

  @override
  String get budgets => 'Belanjawan';

  @override
  String get totalBudget => 'Jumlah belanjawan';

  @override
  String get spent => 'Dibelanjakan';

  @override
  String get remaining => 'Baki';

  @override
  String budgetUsed(int percent) {
    return '$percent% digunakan';
  }

  @override
  String get onTrack => 'Mengikut jadual';

  @override
  String get approachingLimit => 'Menghampiri had';

  @override
  String get overBudget => 'Melebihi belanjawan';

  @override
  String get savings => 'Simpanan';

  @override
  String get yourGoals => 'Matlamat anda';

  @override
  String get saved => 'Disimpan';

  @override
  String get target => 'Sasaran';

  @override
  String get monthlyContribution => 'Bulanan';

  @override
  String get addFunds => 'Tambah dana';

  @override
  String get goalComplete => 'Matlamat dicapai';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tinggal $count bulan',
      one: 'Tinggal 1 bulan',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Pinjaman & hutang';

  @override
  String get totalOutstanding => 'Jumlah baki tertunggak';

  @override
  String get monthlyPayment => 'Bulanan';

  @override
  String get nextPayment => 'Bayaran seterusnya';

  @override
  String paidOff(int percent) {
    return '$percent% telah dibayar';
  }

  @override
  String get interestRate => 'Kadar faedah';

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
  String get incomeVsExpenses => 'Pendapatan vs. perbelanjaan';

  @override
  String get spendingByCategory => 'Perbelanjaan mengikut kategori';

  @override
  String get budgetPerformance => 'Prestasi belanjawan';

  @override
  String get insights => 'Wawasan';

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
  String get preferences => 'Pilihan';

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
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Cerah';

  @override
  String get themeDark => 'Gelap';

  @override
  String get settings => 'Tetapan';

  @override
  String get noNotificationsTitle => 'Tiada pemberitahuan baharu';

  @override
  String get noNotificationsBody =>
      'Wawasan dan peringatan baharu akan dipaparkan di sini.';

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
  String get somethingWentWrong => 'Sesuatu telah berlaku';

  @override
  String get comingSoon => 'Akan datang dalam versi penuh';

  @override
  String get edit => 'Edit';

  @override
  String get delete => 'Padam';

  @override
  String get undo => 'Buat asal';

  @override
  String get add => 'Tambah';

  @override
  String get create => 'Cipta';

  @override
  String get nameRequired => 'Sila masukkan nama anda';

  @override
  String get amountAboveZero => 'Masukkan jumlah lebih besar daripada sifar';

  @override
  String get editTransaction => 'Edit transaksi';

  @override
  String get deleteTransaction => 'Padam transaksi?';

  @override
  String deleteTransactionBody(String title) {
    return '$title akan dialih keluar daripada lejar anda.';
  }

  @override
  String get transactionDeleted => 'Transaksi dipadamkan';

  @override
  String get transactionUpdated => 'Transaksi dikemas kini';

  @override
  String get newBudget => 'Belanjawan baharu';

  @override
  String get editBudget => 'Edit belanjawan';

  @override
  String get budgetLimit => 'Had bulanan';

  @override
  String get deleteBudget => 'Padam belanjawan?';

  @override
  String deleteBudgetBody(String category) {
    return 'Belanjawan untuk $category akan dialih keluar. Transaksi anda tidak akan terjejas.';
  }

  @override
  String get budgetSaved => 'Belanjawan disimpan';

  @override
  String get budgetDeleted => 'Belanjawan dipadamkan';

  @override
  String get allCategoriesBudgeted =>
      'Setiap kategori sudah mempunyai belanjawan';

  @override
  String get noBudgetsTitle => 'Belum ada belanjawan';

  @override
  String get noBudgetsBody =>
      'Tetapkan had bulanan pada kategori untuk mula menjejakinya.';

  @override
  String get newGoal => 'Matlamat baharu';

  @override
  String get editGoal => 'Edit matlamat';

  @override
  String get goalName => 'Nama matlamat';

  @override
  String get goalNameHint => 'cth. Dana kecemasan';

  @override
  String get targetAmount => 'Jumlah sasaran';

  @override
  String get alreadySaved => 'Telah disimpan';

  @override
  String get deleteGoal => 'Padam matlamat?';

  @override
  String deleteGoalBody(String name) {
    return '$name dan kemajuannya akan dialih keluar.';
  }

  @override
  String get goalSaved => 'Matlamat disimpan';

  @override
  String get goalDeleted => 'Matlamat dipadamkan';

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
  String get editDebt => 'Edit pinjaman';

  @override
  String get debtName => 'Nama';

  @override
  String get debtNameHint => 'cth. Pinjaman kereta';

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
    return '$name akan dialih keluar daripada senarai hutang anda.';
  }

  @override
  String get debtSaved => 'Disimpan';

  @override
  String get debtDeleted => 'Dipadamkan';

  @override
  String get noDebtsTitle => 'Tiada hutang dijejaki';

  @override
  String get noDebtsBody =>
      'Tambah pinjaman atau kad kredit untuk memantau pembayaran semula.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Belanjawan $subject melebihi had';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Perbelanjaan anda melebihi belanjawan $subject sebanyak $amount bagi tempoh ini.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject menghampiri hadnya';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Belanjawan $subject anda telah digunakan sebanyak $percent%, dengan baki $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Perbelanjaan melebihi pendapatan';

  @override
  String get insightOverIncomeBody =>
      'Anda telah berbelanja lebih daripada apa yang diperoleh dalam tempoh ini. Semak kategori terbesar anda untuk mengimbangi semula kewangan.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Perbelanjaan $subject meningkat';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Perbelanjaan $subject anda adalah $percent% lebih tinggi berbanding tempoh sebelumnya.';
  }

  @override
  String get insightTrendDownTitle => 'Perbelanjaan menunjukkan aliran menurun';

  @override
  String insightTrendDownBody(int percent) {
    return 'Jumlah perbelanjaan keseluruhan adalah $percent% lebih rendah berbanding tempoh sebelumnya.';
  }

  @override
  String get insightTrendUpTitle => 'Perbelanjaan menunjukkan aliran menaik';

  @override
  String insightTrendUpBody(int percent) {
    return 'Jumlah perbelanjaan keseluruhan adalah $percent% lebih tinggi berbanding tempoh sebelumnya.';
  }

  @override
  String get insightSavingsStrongTitle => 'Simpanan kukuh untuk tempoh ini';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Anda menyimpan sebanyak $percent% daripada pendapatan — jauh melebihi sasaran $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Kadar simpanan di bawah sasaran';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Anda menyimpan sebanyak $percent% daripada pendapatan dalam tempoh ini. Sasarkan sekurang-kurangnya $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject hampir tercapai';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Hanya tinggal $amount lagi untuk mencapai sasaran $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Mengikut sasaran untuk $subject';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months bulan',
      one: '1 bulan',
    );
    return 'Dengan menyimpan sebanyak $amount sebulan, anda akan mencapai matlamat ini dalam masa $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Bayaran $subject telah tertunggak';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari',
      one: '1 hari',
    );
    return 'Bayaran $amount untuk $subject telah lewat selama $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Bayaran untuk $subject semakin dekat';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'dalam masa $days hari',
      one: 'esok',
      zero: 'hari ini',
    );
    return 'Jumlah $amount perlu dibayar $_temp0.';
  }

  @override
  String get signIn => 'Log masuk';

  @override
  String get signUp => 'Cipta akaun';

  @override
  String get signInSubtitle =>
      'Selamat kembali. Data kewangan anda sedia untuk disemak.';

  @override
  String get signUpSubtitle =>
      'Hanya beberapa maklumat ringkas dan anda siap bermula.';

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
  String get fullNameHint => 'Ahmad Albab';

  @override
  String get forgotPassword => 'Lupa kata laluan?';

  @override
  String get resetSent => 'Semak peti masuk anda untuk pautan penetapan semula';

  @override
  String get noAccountYet => 'Baru di sini?';

  @override
  String get haveAccount => 'Sudah mempunyai akaun?';

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
  String get insightWeeklySummaryTitle => 'Ulasan mingguan anda';

  @override
  String get insightWeeklySummaryBody =>
      'Ketahui ke mana wang anda dibelanjakan minggu ini dan perkembangan belanjawan anda.';

  @override
  String get notificationSettings => 'Pemberitahuan';

  @override
  String get alertsSection => 'Makluman';

  @override
  String get budgetAlerts => 'Makluman belanjawan';

  @override
  String get budgetAlertsBody =>
      'Apabila belanjawan menghampiri atau melebihi had';

  @override
  String get paymentReminders => 'Peringatan bayaran';

  @override
  String get paymentRemindersBody =>
      'Beberapa hari sebelum tarikh akhir bayaran';

  @override
  String get savingsUpdates => 'Kemas kini simpanan';

  @override
  String get savingsUpdatesBody => 'Kemajuan ke arah matlamat simpanan anda';

  @override
  String get weeklySummaryLabel => 'Ringkasan mingguan';

  @override
  String get weeklySummaryBody =>
      'Ulasan padat tentang minggu yang baru berlalu';

  @override
  String get scheduleSection => 'Masa';

  @override
  String get reminderTime => 'Masa peringatan';

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
      'Benarkan pemberitahuan supaya RainyPenny boleh mengingatkan anda sebelum perbelanjaan atau bayaran terlepas daripada kawalan.';

  @override
  String get allowNotifications => 'Benarkan pemberitahuan';

  @override
  String get permissionDenied =>
      'Pemberitahuan disekat. Anda boleh menghidupkannya dalam tetapan peranti anda.';

  @override
  String get upcomingAlerts => 'Dijadualkan';

  @override
  String get noScheduledAlerts => 'Tiada makluman dijadualkan buat masa ini';

  @override
  String get noScheduledAlertsBody =>
      'Makluman akan dipaparkan di sini apabila belanjawan dan tarikh bayaran anda semakin dekat.';

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
  String get quickActionsTitle => 'Apakah yang ingin anda lakukan?';

  @override
  String get createSection => 'Rekod';

  @override
  String get jumpToSection => 'Pergi ke';

  @override
  String get addLoanAction => 'Tambah pinjaman';

  @override
  String get addBudgetAction => 'Tambah belanjawan';

  @override
  String get addGoalAction => 'Tambah matlamat';

  @override
  String get longPressHint =>
      'Petua: tekan dan tahan + untuk merekod perbelanjaan serta-merta';

  @override
  String get searchCurrencies => 'Cari mata wang';

  @override
  String get noCurrenciesFound => 'Tiada mata wang ditemui';

  @override
  String get noCurrenciesFoundMessage =>
      'Cuba kod, simbol atau nama yang berbeza.';

  @override
  String get popularCurrencies => 'Popular';

  @override
  String get allCurrencies => 'Semua mata wang';

  @override
  String get totalLoanAmount => 'Jumlah keseluruhan pinjaman';

  @override
  String get installmentAmount => 'Jumlah ansuran';

  @override
  String get numberOfInstallments => 'Bilangan ansuran';

  @override
  String get paidInstallments => 'Ansuran yang telah dibayar';

  @override
  String get remainingInstallments => 'Baki ansuran';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid daripada $total telah dibayar';
  }

  @override
  String get finalPayment => 'Bayaran akhir';

  @override
  String get paymentDueDate => 'Tarikh akhir bayaran';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Hari ke-$day setiap bulan';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'Aktif';

  @override
  String get statusDueSoon => 'Hampir tarikh akhir';

  @override
  String get statusOverdue => 'Tertunggak';

  @override
  String get statusCompleted => 'Selesai dibayar';

  @override
  String get repaymentProgress => 'Kemajuan pembayaran semula';

  @override
  String get byAmount => 'Mengikut jumlah';

  @override
  String get byInstallments => 'Mengikut ansuran';

  @override
  String get startDate => 'Tarikh mula';

  @override
  String get openEnded => 'Tempoh terbuka';

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
    return 'Bayaran anda sebanyak $amount perlu dibayar hari ini. Rekodkan segera untuk kekal mengikut jadual.';
  }

  @override
  String get remindMorningTitle => 'Selamat pagi ☀️';

  @override
  String get remindMorningBody =>
      'Mulakan hari dengan kawalan kewangan yang jelas. Ada apa-apa perbelanjaan semalam untuk direkodkan?';

  @override
  String get remindNoonTitle => 'Semakan tengah hari';

  @override
  String get remindNoonBody =>
      'Makan tengah hari, kopi, atau tambang? Rekodkannya dalam beberapa saat sahaja.';

  @override
  String get remindAfternoonTitle => 'Semakan petang';

  @override
  String get remindAfternoonBody =>
      'Catat apa yang telah anda belanjakan setakat ini untuk rekod hari ini yang tepat.';

  @override
  String get remindEveningTitle => 'Penutup hari';

  @override
  String get remindEveningBody =>
      'Dua minit sahaja sekarang untuk melengkapkan kira-kira perbelanjaan hari ini.';

  @override
  String get happyWeekendTitle => 'Selamat hujung minggu! 🎉';

  @override
  String get happyWeekendBody =>
      'Nikmati cuti anda — dan sentiasa pantau perbelanjaan hujung minggu.';

  @override
  String get dailyReminders => 'Peringatan perbelanjaan harian';

  @override
  String get dailyRemindersBody =>
      'Peringatan mesra untuk memastikan rekod perbelanjaan anda sentiasa terkini';

  @override
  String get weekendGreeting => 'Salam Hujung Minggu';

  @override
  String get weekendGreetingBody =>
      'Ucapan mesra pada permulaan hujung minggu anda';

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
      'Dijana oleh RainyPenny berdasarkan rekod anda sendiri.';

  @override
  String pageOf(int page, int total) {
    return 'Halaman $page daripada $total';
  }

  @override
  String get overview => 'Gambaran Keseluruhan';

  @override
  String get description => 'Penerangan';

  @override
  String get totalIncome => 'Jumlah pendapatan';

  @override
  String get totalExpenses => 'Jumlah perbelanjaan';

  @override
  String get totalSaved => 'Jumlah disimpan';

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
      one: 'dan 1 transaksi lagi',
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
  String get reportReady => 'Laporan siap';

  @override
  String get reportFailed => 'Tidak dapat mencipta laporan';

  @override
  String get categories => 'Kategori';

  @override
  String get categoriesIntro =>
      'Tambah kategori anda sendiri untuk menyusun pendapatan dan perbelanjaan mengikut kehendak anda.';

  @override
  String get expenseCategories => 'Kategori perbelanjaan';

  @override
  String get incomeCategories => 'Kategori pendapatan';

  @override
  String get newCategory => 'Kategori baharu';

  @override
  String get editCategory => 'Edit kategori';

  @override
  String get categoryName => 'Nama';

  @override
  String get categoryNameHint => 'cth. Haiwan peliharaan';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategori disimpan';

  @override
  String get categoryDeleted => 'Kategori dipadamkan';

  @override
  String get deleteCategory => 'Padam kategori ini?';

  @override
  String deleteCategoryBody(String name) {
    return '$name akan dialih keluar daripada kategori anda.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rekod masih menggunakan kategori ini',
      one: '1 rekod masih menggunakan kategori ini',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Tiada apa-apa di sini lagi.';

  @override
  String get builtIn => 'Bawaan';

  @override
  String get manageCategories => 'Urus kategori';

  @override
  String get expense => 'Perbelanjaan';

  @override
  String get languageNote =>
      'Bahasa Arab, Urdu, Parsi dan Ibrani menukar seluruh antara muka dari kanan ke kiri, termasuk carta dan laporan PDF.';

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
  String get passwordsDoNotMatch => 'Kedua-dua kata laluan mesti sepadan';

  @override
  String get showPassword => 'Papar kata laluan';

  @override
  String get hidePassword => 'Sembunyi kata laluan';

  @override
  String get savePassword => 'Simpan kata laluan';

  @override
  String get backToSignIn => 'Kembali ke log masuk';

  @override
  String get alreadyHaveAccount => 'Saya sudah mempunyai akaun';

  @override
  String get getStarted => 'Mula sekarang';

  @override
  String get acceptTerms =>
      'Saya bersetuju dengan Terma Perkhidmatan dan Dasar Privasi';

  @override
  String get acceptTermsRequired => 'Sila terima syarat untuk meneruskan';

  @override
  String get passwordStrengthTooShort => 'Terlalu pendek';

  @override
  String get passwordStrengthWeak => 'Lemah';

  @override
  String get passwordStrengthFair => 'Sederhana';

  @override
  String get passwordStrengthGood => 'Baik';

  @override
  String get passwordStrengthStrong => 'Kukuh';

  @override
  String get passwordAdvice =>
      'Frasa panjang yang mudah anda ingati lebih baik daripada frasa pendek yang sarat dengan simbol. Elakkan kata laluan yang telah anda gunakan di tempat lain.';

  @override
  String get authInvalidCredentials =>
      'E-mel dan kata laluan tersebut tidak sepadan dengan mana-mana akaun';

  @override
  String get authEmailNotConfirmed =>
      'Sahkan alamat e-mel anda sebelum log masuk';

  @override
  String get authEmailAlreadyRegistered => 'Akaun dengan e-mel ini sudah wujud';

  @override
  String get authWeakPassword => 'Pilih kata laluan yang lebih panjang';

  @override
  String get authRateLimited =>
      'Terlalu banyak percubaan. Sila cuba lagi sebentar lagi';

  @override
  String get authNetworkError =>
      'Tiada sambungan. Sila periksa rangkaian anda dan cuba lagi';

  @override
  String get authGenericError => 'Sesuatu telah berlaku. Sila cuba lagi';

  @override
  String get confirmEmailTitle => 'Semak e-mel anda';

  @override
  String confirmEmailBody(String email) {
    return 'Kami telah menghantar pautan pengesahan ke $email. Buka pautan tersebut untuk melengkapkan persediaan akaun anda.';
  }

  @override
  String get resendConfirmation => 'Hantar semula e-mel pengesahan';

  @override
  String get confirmationResent => 'E-mel pengesahan telah dihantar';

  @override
  String get forgotPasswordTitle => 'Tetapkan semula kata laluan';

  @override
  String get forgotPasswordSubtitle =>
      'Masukkan e-mel yang anda gunakan semasa mendaftar dan kami akan menghantar pautan untuk memilih kata laluan baharu.';

  @override
  String get sendResetLink => 'Hantar pautan penetapan semula';

  @override
  String get resetLinkSentTitle => 'Pautan penetapan semula dihantar';

  @override
  String resetLinkSentBody(String email) {
    return 'Jika $email berdaftar, pautan penetapan semula sedang dihantar.';
  }

  @override
  String get resetLinkSentHint =>
      'Pautan ini luput dalam masa satu jam. Jika tidak diterima, semak folder spam anda sebelum memohon semula.';

  @override
  String get tryAnotherEmail => 'Gunakan e-mel lain';

  @override
  String get resetPasswordTitle => 'Pilih kata laluan baharu';

  @override
  String get resetPasswordSubtitle =>
      'Pilih kata laluan yang belum pernah anda gunakan pada akaun ini sebelum ini.';

  @override
  String get passwordChangedTitle => 'Kata laluan dikemas kini';

  @override
  String get passwordChangedBody =>
      'Kata laluan baharu anda telah disimpan. Anda kini telah log masuk dan sedia untuk bermula.';

  @override
  String get demoModeHint => 'Mod demo — tiada akaun diperlukan';

  @override
  String get demoModeFill => 'Isi contoh';

  @override
  String get welcomeTrackTitle => 'Ketahui ke mana wang anda mengalir';

  @override
  String get welcomeTrackBody =>
      'Rekodkan apa yang masuk dan apa yang keluar. RainyPenny menukarkannya kepada gambaran jelas yang mudah difahami.';

  @override
  String get welcomeBudgetTitle => 'Tetapkan had yang berkesan';

  @override
  String get welcomeBudgetBody =>
      'Berikan had bulanan bagi setiap bahagian perbelanjaan anda, dan dapatkan peringatan sebelum anda melepasinya, bukan selepas.';

  @override
  String get welcomeGoalsTitle => 'Menabung untuk perkara yang penting';

  @override
  String get welcomeGoalsBody =>
      'Namakan matlamat, tetapkan sasaran, dan saksikan simpanan anda berkembang. Dana kecemasan lebih mudah dibina apabila anda dapat melihat kemajuannya.';

  @override
  String get welcomePrivacyTitle => 'Wang dan maklumat anda kekal milik anda';

  @override
  String get welcomePrivacyBody =>
      'Semua angka anda adalah milik anda sepenuhnya. Tiada yang dijual dan tiada yang dikongsi dengan sesiapa.';

  @override
  String stepOf(int step, int total) {
    return 'Langkah $step daripada $total';
  }

  @override
  String get onboardingNameTitle => 'Bagaimanakah kami patut memanggil anda?';

  @override
  String get onboardingNameBody =>
      'Kami hanya akan menggunakannya untuk menyapa anda, dan bukan di tempat lain.';

  @override
  String get onboardingNameHint =>
      'Nama pertama sudah mencukupi. Anda boleh mengubahnya kemudian.';

  @override
  String get onboardingCurrencyTitle => 'Mata wang manakah yang anda gunakan?';

  @override
  String get onboardingCurrencyBody =>
      'Setiap jumlah dalam aplikasi akan ditunjukkan dalam mata wang ini. Pemilihan ini tidak menukar mana-mana nilai.';

  @override
  String get onboardingCurrencySearch => 'Cari semua mata wang';

  @override
  String get onboardingAppearanceTitle => 'Sesuaikan mengikut cita rasa anda';

  @override
  String get onboardingAppearanceBody =>
      'Pilih tema. Segala-galanya berubah serta-merta apabila anda mengetik, dan anda boleh kembali mengubahnya pada bila-bila masa.';

  @override
  String get onboardingNotificationsTitle =>
      'Sentiasa peka dengan perbelanjaan';

  @override
  String get onboardingNotificationsBody =>
      'Peringatan santai pada masa yang tepat adalah kunci untuk menjadikannya satu tabiat yang berterusan.';

  @override
  String get onboardingNotifyReminders =>
      'Peringatan mesra untuk mencatat apa yang telah anda belanjakan';

  @override
  String get onboardingNotifyBudget =>
      'Peringatan awal sebelum belanjawan habis';

  @override
  String get onboardingNotifySummary =>
      'Ringkasan mingguan tentang ke mana wang anda dibelanjakan';

  @override
  String get onboardingNotifyEnable => 'Hidupkan pemberitahuan';

  @override
  String get onboardingNotifyDone => 'Tetapan pemberitahuan disimpan';

  @override
  String get onboardingNotifyLater =>
      'Anda boleh menukar semua ini dalam Tetapan pada bila-bila masa.';

  @override
  String get onboardingReadyTitle => 'Semuanya sudah sedia';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Semuanya sudah sedia, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Persediaan telah selesai. Adakah anda ingin melihat panduan ringkas tentang cara semuanya berfungsi?';

  @override
  String get onboardingTakeTour => 'Tunjukkan kepada saya';

  @override
  String get onboardingGoToApp => 'Terus ke aplikasi';

  @override
  String get onboardingTourLater =>
      'Bukan sekarang? Panduan ini kekal dalam Tetapan untuk bila-bila masa anda memerlukannya.';

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
  String get guideDashboardTitle => 'Papan pemuka anda';

  @override
  String get guideDashboardBody =>
      'Segala-galanya bermula di sini. Kad di bahagian atas ialah baki anda; di bawahnya ialah wang masuk dan keluar bagi tempoh ini, diikuti perbelanjaan, belanjawan dan matlamat anda.';

  @override
  String get guideDashboardTip1 =>
      'Tarik skrin ke bawah untuk menyegarkan semua data sekali gus.';

  @override
  String get guideDashboardTip2 =>
      'Ketik kad pendapatan atau perbelanjaan untuk terus ke senarai tersebut.';

  @override
  String get guideDashboardTip3 =>
      'Carta bulatan dan wawasan dikemas kini serta-merta apabila anda merekodkan sesuatu.';

  @override
  String get guideAddTitle => 'Merekodkan wang';

  @override
  String get guideAddBody =>
      'Butang di tengah bar bawah ialah tempat permulaan. Ia membuka menu ringkas: wang keluar, wang masuk, hutang, belanjawan atau matlamat simpanan.';

  @override
  String get guideAddTip1 =>
      'Ketik butang tengah untuk merekodkan wang masuk atau keluar.';

  @override
  String get guideAddTip2 =>
      'Tekan lama untuk terus ke borang perbelanjaan baharu tanpa membuka menu.';

  @override
  String get guideAddTip3 =>
      'Sentiasa pilih kategori — inilah yang membolehkan carta dan belanjawan berfungsi dengan tepat.';

  @override
  String get guideCategoriesTitle => 'Kategori';

  @override
  String get guideCategoriesBody =>
      'Kategori ialah cara perbelanjaan dikumpulkan. Pilihan sedia ada merangkumi keperluan kebanyakan pengguna, dan anda boleh menamakannya semula atau menambah kategori baharu.';

  @override
  String get guideCategoriesTip1 =>
      'Buka Tetapan, kemudian Urus kategori, untuk menukar atau menambah.';

  @override
  String get guideCategoriesTip2 =>
      'Sebarang transaksi tanpa kategori akan dimasukkan ke dalam Lain-lain supaya carta kekal tepat.';

  @override
  String get guideBudgetTitle => 'Belanjawan';

  @override
  String get guideBudgetBody =>
      'Belanjawan ialah had bulanan untuk satu kategori. Bar akan terisi semasa anda berbelanja dan bertukar warna apabila menghampiri had.';

  @override
  String get guideBudgetTip1 =>
      'Mulakan dengan dua atau tiga kategori dahulu, bukan semuanya sekali gus.';

  @override
  String get guideBudgetTip2 =>
      'Tetapkan had lebih tinggi sedikit daripada kebiasaan anda, kemudian ketatkannya secara beransur-ansur.';

  @override
  String get guideBudgetTip3 =>
      'Biarkan makluman belanjawan aktif supaya aplikasi memberi amaran sebelum ia habis.';

  @override
  String get guideSavingsTitle => 'Matlamat simpanan';

  @override
  String get guideSavingsBody =>
      'Namakan tujuan simpanan anda, tetapkan sasaran dan tarikh, dan aplikasi akan mengira jumlah yang perlu anda simpan setiap bulan.';

  @override
  String get guideSavingsTip1 =>
      'Matlamat yang jelas lebih mudah dipertahankan berbanding niat menabung yang kabur.';

  @override
  String get guideSavingsTip2 =>
      'Beberapa matlamat kecil lebih kerap berjaya dicapai berbanding satu matlamat yang terlalu besar.';

  @override
  String get guideLoansTitle => 'Hutang dan pinjaman';

  @override
  String get guideLoansBody =>
      'Rekodkan apa yang anda hutang, kosnya dan tarikh bayaran seterusnya. Semua tanggungan anda tersusun dalam satu senarai berserta baki keseluruhannya.';

  @override
  String get guideLoansTip1 =>
      'Tambah tarikh akhir dan peringatan pembayaran akan mengingatkan anda tepat pada masanya.';

  @override
  String get guideLoansTip2 =>
      'Hutang yang tertunggak akan ditandakan dengan warna merah pada papan pemuka sehingga ia dijelaskan.';

  @override
  String get guideReportsTitle => 'Laporan';

  @override
  String get guideReportsBody =>
      'Analisis terperinci: pendapatan berbanding perbelanjaan, perbelanjaan mengikut kategori, ketahanan belanjawan dan peratusan pendapatan yang berjaya anda simpan.';

  @override
  String get guideReportsTip1 =>
      'Tukar antara paparan minggu, bulan dan suku tahun di bahagian atas skrin.';

  @override
  String get guideReportsTip2 =>
      'Eksport atau kongsi PDF — dijana mengikut bahasa dan susun atur bacaan anda.';

  @override
  String get guideSettingsTitle => 'Tetapan';

  @override
  String get guideSettingsBody =>
      'Bahasa, mata wang, warna dan makluman semuanya ada di sini, dan tiada yang kekal — tukar apa sahaja pada bila-bila masa yang anda mahu.';

  @override
  String get guideSettingsTip1 =>
      'Empat puluh bahasa disokong, dengan pembalikan susun atur penuh bagi bahasa kanan-ke-kiri.';

  @override
  String get guideSettingsTip2 =>
      'Pilih makluman yang anda inginkan dan waktu ia dibenarkan tiba.';

  @override
  String get guideSettingsTip3 =>
      'Waktu senyap menahan semua pemberitahuan sehingga waktu pagi.';

  @override
  String get guideHabitTitle => 'Jadikannya satu tabiat';

  @override
  String get guideHabitBody =>
      'Aplikasi ini hanya sebaik maklumat yang anda masukkan. Seminit sehari lebih baik daripada sejam sebulan sekali, dan selepas dua minggu nombor-nombor ini akan mula menceritakan sesuatu yang berharga.';

  @override
  String get guideHabitTip1 =>
      'Catat perbelanjaan sebaik sahaja ia berlaku, bukan pada hujung minggu.';

  @override
  String get guideHabitTip2 =>
      'Lihat papan pemuka sekali sehari. Sepuluh saat sudah memadai.';

  @override
  String get guideHabitTip3 =>
      'Panduan ini kekal dalam Tetapan — kembali semula pada bila-bila masa.';

  @override
  String get appearance => 'Rupa bentuk';

  @override
  String get themeCaption =>
      'Cerah, gelap, atau mengikut tetapan telefon anda.';

  @override
  String get accentColor => 'Warna aksen';

  @override
  String get accentColorCaption => 'Mewarnakan butang, sorotan dan carta.';

  @override
  String get accentSemanticsNote =>
      'Wang masuk dan keluar mengekalkan warna tersendiri dalam setiap tema, jadi angka tidak akan berubah maksud hanya kerana anda menukar warna tema.';

  @override
  String get accentTeal => 'Teal';

  @override
  String get accentGreen => 'Hijau';

  @override
  String get accentSky => 'Biru Langit';

  @override
  String get accentBlue => 'Biru';

  @override
  String get accentIndigo => 'Indigo';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentPink => 'Merah Jambu';

  @override
  String get accentCrimson => 'Krimson';

  @override
  String get accentOrange => 'Jingga';

  @override
  String get accentSlate => 'Kelabu Slat';

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
      'Cuba nama dalam bahasa Inggeris atau kod dua huruf.';

  @override
  String get rightToLeft => 'Kanan ke kiri';

  @override
  String get replayGuide => 'Mainkan semula panduan';

  @override
  String get replaySetup => 'Jalankan persediaan semula';

  @override
  String get replaySetupBody =>
      'Jawab soalan permulaan sekali lagi. Tiada rekod yang telah anda simpan akan dipadamkan.';

  @override
  String get rateTitle => 'Suka menggunakan RainyPenny?';

  @override
  String get rateBody =>
      'Anda telah menggunakannya untuk beberapa ketika. Penilaian hanya mengambil masa sekejap dan membantu orang lain menemui aplikasi ini.';

  @override
  String get rateAction => 'Nilaikan aplikasi';

  @override
  String get rateLater => 'Mungkin nanti';

  @override
  String get rateNever => 'Tidak, terima kasih';

  @override
  String get rateThanks => 'Terima kasih banyak';

  @override
  String get monthlySalary => 'Gaji bulanan';

  @override
  String get remainingAmount => 'Baki';

  @override
  String get carriedForward => 'Dibawa ke hadapan';

  @override
  String get carriedForwardHint => 'Baki lebihan daripada kitaran lepas';

  @override
  String get totalSpending => 'Jumlah perbelanjaan';

  @override
  String get salaryCycle => 'Kitaran gaji';

  @override
  String get payday => 'Hari gaji';

  @override
  String get paydayDescription =>
      'Hari gaji anda diterima. Bulan kewangan anda bermula dari hari ini sehingga sehari sebelum hari gaji seterusnya.';

  @override
  String get paydayUpdated => 'Hari gaji dikemas kini';

  @override
  String paydayDayOfMonth(int day) {
    return 'Hari ke-$day';
  }

  @override
  String get paydayShortMonthNote =>
      'Bagi bulan yang lebih pendek, kitaran akan bermula pada hari terakhir bulan tersebut.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari lagi sebelum gaji',
      one: '1 hari lagi sebelum gaji',
      zero: 'Hari terakhir kitaran',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Hari gaji seterusnya';

  @override
  String get spentSoFar => 'Dibelanjakan setakat ini';

  @override
  String get dailyAllowance => 'Had belanja harian selamat';

  @override
  String get overspentNotice =>
      'Anda telah berbelanja melebihi apa yang diterima dalam kitaran ini.';

  @override
  String get backToThisMonth => 'Kembali ke bulan ini';

  @override
  String get cycleRangeLabel => 'Kitaran';

  @override
  String get noSalaryRecorded => 'Belum ada gaji direkodkan';

  @override
  String get addSalaryAction => 'Tambah gaji anda';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Cemerlang';

  @override
  String get healthGood => 'Baik';

  @override
  String get healthFair => 'Sederhana';

  @override
  String get healthNeedsWork => 'Perlu diperbaiki';

  @override
  String get healthExcellentBody =>
      'Anda menabung dengan baik dan kekal dalam had belanjawan anda.';

  @override
  String get healthGoodBody =>
      'Perbelanjaan anda berada di landasan yang betul dalam tempoh ini.';

  @override
  String get healthFairBody =>
      'Beberapa belanjawan menghampiri had. Pelarasan kecil akan membantu.';

  @override
  String get healthNeedsWorkBody =>
      'Perbelanjaan melebihi perancangan anda. Mulakan dengan menyemak kategori perbelanjaan terbesar.';

  @override
  String get factorSavingsRate => 'Kadar simpanan';

  @override
  String get factorBudgetControl => 'Kawalan belanjawan';

  @override
  String get factorDebtLoad => 'Beban hutang';

  @override
  String get factorSpendingTrend => 'Aliran perbelanjaan';

  @override
  String factorKept(String percent) {
    return '$percent% disimpan';
  }

  @override
  String factorUsed(String percent) {
    return '$percent% digunakan';
  }

  @override
  String factorOfIncome(String percent) {
    return '$percent% daripada pendapatan';
  }

  @override
  String factorTrendUp(String percent) {
    return 'Naik $percent%';
  }

  @override
  String factorTrendDown(String percent) {
    return 'Turun $percent%';
  }

  @override
  String get howScoreWorks => 'Bagaimana skor ini dikira';

  @override
  String get healthScoreExplainer =>
      'Skor anda menggabungkan empat faktor: berapa banyak pendapatan yang anda simpan, sejauh mana anda mematuhi belanjawan, berapa banyak pendapatan disalurkan untuk hutang, dan sama ada perbelanjaan anda meningkat atau menurun.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% daripada jumlah skor';
  }

  @override
  String get viewHealthDetails => 'Lihat pecahan terperinci';

  @override
  String get saveChanges => 'Simpan perubahan';

  @override
  String get profileUpdated => 'Profil dikemas kini';

  @override
  String get changePhoto => 'Tukar gambar';

  @override
  String get removePhoto => 'Buang gambar';

  @override
  String get personalInformationIntro =>
      'Nama dan gambar anda dipaparkan di seluruh aplikasi. E-mel anda ialah alamat yang anda gunakan untuk log masuk.';

  @override
  String get emailNotEditable =>
      'Hubungi sokongan untuk menukar alamat e-mel log masuk anda.';

  @override
  String get pressBackAgainToExit => 'Tekan kembali sekali lagi untuk keluar';

  @override
  String get categoryHousing => 'Perumahan';

  @override
  String get categoryFood => 'Makanan & Minuman';

  @override
  String get categoryTransport => 'Pengangkutan';

  @override
  String get categoryShopping => 'Membeli-belah';

  @override
  String get categoryBills => 'Bil & Utiliti';

  @override
  String get categoryEntertainment => 'Hiburan';

  @override
  String get categoryHealth => 'Kesihatan & Kecergasan';

  @override
  String get categoryEducation => 'Pendidikan';

  @override
  String get categoryTravel => 'Pelancongan';

  @override
  String get categorySalary => 'Gaji';

  @override
  String get categoryFreelance => 'Bekerja sendiri / Bebas';

  @override
  String get categoryInvestments => 'Pelaburan';

  @override
  String get categoryGift => 'Hadiah';

  @override
  String get categoryOther => 'Lain-lain';

  @override
  String get categoryGroceries => 'Barang dapur';

  @override
  String get categoryDining => 'Makan di luar';

  @override
  String get categoryCoffee => 'Kopi';

  @override
  String get categoryUtilities => 'Utiliti';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Telefon';

  @override
  String get categoryInsurance => 'Insurans';

  @override
  String get categorySubscriptions => 'Langganan';

  @override
  String get categoryPersonalCare => 'Penjagaan diri';

  @override
  String get categoryClothing => 'Pakaian';

  @override
  String get categoryElectronics => 'Elektronik';

  @override
  String get categoryHomeSupplies => 'Kelengkapan rumah';

  @override
  String get categoryPets => 'Haiwan peliharaan';

  @override
  String get categoryChildcare => 'Penjagaan anak';

  @override
  String get categoryFamily => 'Keluarga';

  @override
  String get categoryFitness => 'Kecergasan';

  @override
  String get categorySports => 'Sukan';

  @override
  String get categoryMedicine => 'Ubat-ubatan';

  @override
  String get categoryMedical => 'Perubatan';

  @override
  String get categoryCharity => 'Kebajikan / Sedekah';

  @override
  String get categoryTaxes => 'Cukai';

  @override
  String get categoryFees => 'Yuran & Caj';

  @override
  String get categoryDebt => 'Hutang';

  @override
  String get categorySavings => 'Simpanan';

  @override
  String get categoryRepairs => 'Pembaikan';

  @override
  String get categoryCarMaintenance => 'Penyelenggaraan kereta';

  @override
  String get categoryFuel => 'Bahan api';

  @override
  String get categoryParking => 'Tempat letak kereta';

  @override
  String get categoryPublicTransport => 'Pengangkutan awam';

  @override
  String get categoryRent => 'Sewa';

  @override
  String get categoryMortgage => 'Gadai janji';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Komisen';

  @override
  String get categoryPension => 'Pencen';

  @override
  String get categoryInterest => 'Faedah';

  @override
  String get categoryDividends => 'Dividen';

  @override
  String get categoryCashback => 'Pulangan tunai';

  @override
  String get categoryRefund => 'Bayaran balik';

  @override
  String get categoryRentalIncome => 'Pendapatan sewa';

  @override
  String get addCategory => 'Kategori baharu';

  @override
  String get filterByCategory => 'Tapis mengikut kategori';

  @override
  String get allCategories => 'Semua kategori';

  @override
  String get clearFilters => 'Kosongkan penapis';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Sepanjang masa';

  @override
  String get customRange => 'Tersuai';

  @override
  String get selectDateRange => 'Pilih tempoh';

  @override
  String rangeApplied(String start, String end) {
    return 'Memaparkan $start – $end';
  }

  @override
  String get loans => 'Pinjaman';

  @override
  String get debts => 'Hutang';

  @override
  String get noLoansTitle => 'Tiada pinjaman';

  @override
  String get noLoansBody => 'Anda tidak mempunyai pinjaman aktif.';

  @override
  String get emptyHealthTitle => 'Belum Ada Skor Kewangan';

  @override
  String get emptyHealthDescription =>
      'Kami memerlukan sedikit aktiviti kewangan sebelum dapat mengira skor kesihatan kewangan yang tepat.';

  @override
  String get emptyHealthAddTransactions =>
      'Tambah transaksi pendapatan atau perbelanjaan';

  @override
  String get emptyHealthSetBudgets => 'Tetapkan belanjawan bulanan anda';

  @override
  String get emptyHealthTrackLoans => 'Jejak pinjaman atau hutang (pilihan)';

  @override
  String get emptyHealthCardSubtitle =>
      'Tambah transaksi untuk mengira skor anda dan memperoleh wawasan.';

  @override
  String get smartBudgetSplit => 'Pembahagian Belanjawan Pintar';

  @override
  String get smartBudgetSplitSubtitle =>
      'Masukkan gaji bulanan anda untuk mengira had cadangan';

  @override
  String get monthlyNetSalary => 'Gaji Bersih Bulanan';

  @override
  String get categoryAllocations => 'Peruntukan Kategori';

  @override
  String totalBudgeted(String amount) {
    return 'Jumlah: $amount';
  }

  @override
  String get applyAllBudgets => 'Gunakan Semua Belanjawan';

  @override
  String get applyingBudgets => 'Menggunakan belanjawan...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count belanjawan kategori telah dicipta.',
      one: '1 belanjawan kategori telah dicipta.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Gagal menyimpan belanjawan.';

  @override
  String get recommendedBudget => 'Belanjawan yang dicadangkan';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppL10nId extends AppL10n {
  AppL10nId([String locale = 'id']) : super(locale);

  @override
  String get appName => 'RainyPenny';

  @override
  String get appTagline => 'Menabung untuk hari hujan';

  @override
  String get navHome => 'Beranda';

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
    return 'Selamat siang, $name';
  }

  @override
  String greetingEvening(String name) {
    return 'Selamat malam, $name';
  }

  @override
  String get greetingSubtitle => 'Berikut ringkasan keuangan Anda';

  @override
  String get totalBalance => 'Total saldo';

  @override
  String get vsLastPeriod => 'vs. periode sebelumnya';

  @override
  String get income => 'Pendapatan';

  @override
  String get expenses => 'Pengeluaran';

  @override
  String get netBalance => 'Saldo bersih';

  @override
  String get lastThirtyDays => '30 hari terakhir';

  @override
  String get quickActions => 'Aksi cepat';

  @override
  String get addIncome => 'Tambah pendapatan';

  @override
  String get addExpense => 'Tambah pengeluaran';

  @override
  String get spendingOverview => 'Ringkasan pengeluaran';

  @override
  String get recentTransactions => 'Transaksi terbaru';

  @override
  String get seeAll => 'Lihat semua';

  @override
  String get viewAll => 'Lihat semua';

  @override
  String get budgetProgress => 'Progres anggaran';

  @override
  String get savingsGoals => 'Target tabungan';

  @override
  String get financialInsight => 'Insight keuangan';

  @override
  String get financialHealth => 'Kesehatan keuangan';

  @override
  String ofTotal(String total) {
    return 'dari $total';
  }

  @override
  String get searchTransactions => 'Cari transaksi';

  @override
  String get filterAll => 'Semua';

  @override
  String get filterIncome => 'Pendapatan';

  @override
  String get filterExpenses => 'Pengeluaran';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Kemarin';

  @override
  String get noTransactionsTitle => 'Tidak ada transaksi ditemukan';

  @override
  String get noTransactionsBody =>
      'Coba pencarian atau filter lain untuk melihat lebih banyak aktivitas Anda.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaksi',
      one: '1 transaksi',
      zero: 'Tidak ada transaksi',
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
  String get date => 'Tanggal';

  @override
  String get note => 'Catatan';

  @override
  String get noteHint => 'Catatan opsional';

  @override
  String get saveIncome => 'Simpan pendapatan';

  @override
  String get saveExpense => 'Simpan pengeluaran';

  @override
  String get selectCategory => 'Pilih kategori';

  @override
  String get transactionSaved => 'Transaksi disimpan';

  @override
  String get amountRequired => 'Masukkan jumlah lebih dari nol';

  @override
  String get titleRequired => 'Beri nama pada transaksi ini';

  @override
  String get descriptionLabel => 'Deskripsi';

  @override
  String get descriptionHint => 'mis. Belanja kebutuhan';

  @override
  String get budget => 'Anggaran';

  @override
  String get budgets => 'Anggaran';

  @override
  String get totalBudget => 'Total anggaran';

  @override
  String get spent => 'Terpakai';

  @override
  String get remaining => 'Tersisa';

  @override
  String budgetUsed(int percent) {
    return '$percent% terpakai';
  }

  @override
  String get onTrack => 'Sesuai rencana';

  @override
  String get approachingLimit => 'Mendekati batas';

  @override
  String get overBudget => 'Melebihi anggaran';

  @override
  String get savings => 'Tabungan';

  @override
  String get yourGoals => 'Target Anda';

  @override
  String get saved => 'Tersimpan';

  @override
  String get target => 'Target';

  @override
  String get monthlyContribution => 'Bulanan';

  @override
  String get addFunds => 'Tambah dana';

  @override
  String get goalComplete => 'Target tercapai';

  @override
  String monthsToGo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tersisa $count bulan',
      one: 'tersisa 1 bulan',
    );
    return '$_temp0';
  }

  @override
  String get loansAndDebts => 'Pinjaman & utang';

  @override
  String get totalOutstanding => 'Total yang belum dibayar';

  @override
  String get monthlyPayment => 'Bulanan';

  @override
  String get nextPayment => 'Pembayaran berikutnya';

  @override
  String paidOff(int percent) {
    return '$percent% terbayar';
  }

  @override
  String get interestRate => 'Bunga';

  @override
  String get upcomingPayments => 'Pembayaran mendatang';

  @override
  String dueInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jatuh tempo dalam $count hari',
      one: 'Jatuh tempo besok',
      zero: 'Jatuh tempo hari ini',
    );
    return '$_temp0';
  }

  @override
  String get overdue => 'Terlambat';

  @override
  String get reports => 'Laporan';

  @override
  String get week => 'Minggu';

  @override
  String get month => 'Bulan';

  @override
  String get quarter => 'Kuartal';

  @override
  String get incomeVsExpenses => 'Pendapatan vs. pengeluaran';

  @override
  String get spendingByCategory => 'Pengeluaran berdasarkan kategori';

  @override
  String get budgetPerformance => 'Kinerja anggaran';

  @override
  String get insights => 'Insight';

  @override
  String get savingsRate => 'Tingkat tabungan';

  @override
  String get profile => 'Profil';

  @override
  String get account => 'Akun';

  @override
  String get personalInformation => 'Informasi pribadi';

  @override
  String get changePassword => 'Ubah kata sandi';

  @override
  String get notifications => 'Notifikasi';

  @override
  String get preferences => 'Preferensi';

  @override
  String get language => 'Bahasa';

  @override
  String get currency => 'Mata uang';

  @override
  String get theme => 'Tema';

  @override
  String get security => 'Keamanan';

  @override
  String get privacyAndSecurity => 'Privasi & keamanan';

  @override
  String get help => 'Bantuan';

  @override
  String get helpAndSupport => 'Bantuan & dukungan';

  @override
  String get termsAndConditions => 'Syarat & ketentuan';

  @override
  String get logOut => 'Keluar';

  @override
  String memberSince(String date) {
    return 'Anggota sejak $date';
  }

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Terang';

  @override
  String get themeDark => 'Gelap';

  @override
  String get settings => 'Pengaturan';

  @override
  String get noNotificationsTitle => 'Anda sudah mengetahui semuanya';

  @override
  String get noNotificationsBody =>
      'Insight dan pengingat baru akan muncul di sini.';

  @override
  String get cancel => 'Batal';

  @override
  String get save => 'Simpan';

  @override
  String get done => 'Selesai';

  @override
  String get retry => 'Coba lagi';

  @override
  String get close => 'Tutup';

  @override
  String get somethingWentWrong => 'Terjadi kesalahan';

  @override
  String get comingSoon => 'Segera hadir dalam rilis lengkap';

  @override
  String get edit => 'Edit';

  @override
  String get delete => 'Hapus';

  @override
  String get undo => 'Urungkan';

  @override
  String get add => 'Tambah';

  @override
  String get create => 'Buat';

  @override
  String get nameRequired => 'Masukkan nama Anda';

  @override
  String get amountAboveZero => 'Masukkan jumlah lebih dari nol';

  @override
  String get editTransaction => 'Edit transaksi';

  @override
  String get deleteTransaction => 'Hapus transaksi?';

  @override
  String deleteTransactionBody(String title) {
    return '$title akan dihapus dari catatan keuangan Anda.';
  }

  @override
  String get transactionDeleted => 'Transaksi dihapus';

  @override
  String get transactionUpdated => 'Transaksi diperbarui';

  @override
  String get newBudget => 'Anggaran baru';

  @override
  String get editBudget => 'Edit anggaran';

  @override
  String get budgetLimit => 'Batas bulanan';

  @override
  String get deleteBudget => 'Hapus anggaran?';

  @override
  String deleteBudgetBody(String category) {
    return 'Anggaran $category akan dihapus. Transaksi Anda tidak terpengaruh.';
  }

  @override
  String get budgetSaved => 'Anggaran disimpan';

  @override
  String get budgetDeleted => 'Anggaran dihapus';

  @override
  String get allCategoriesBudgeted => 'Semua kategori sudah memiliki anggaran';

  @override
  String get noBudgetsTitle => 'Belum ada anggaran';

  @override
  String get noBudgetsBody =>
      'Tetapkan batas bulanan pada kategori untuk mulai melacaknya.';

  @override
  String get newGoal => 'Target baru';

  @override
  String get editGoal => 'Edit target';

  @override
  String get goalName => 'Nama target';

  @override
  String get goalNameHint => 'mis. Dana darurat';

  @override
  String get targetAmount => 'Jumlah target';

  @override
  String get alreadySaved => 'Sudah ditabung';

  @override
  String get deleteGoal => 'Hapus target?';

  @override
  String deleteGoalBody(String name) {
    return '$name dan progresnya akan dihapus.';
  }

  @override
  String get goalSaved => 'Target disimpan';

  @override
  String get goalDeleted => 'Target dihapus';

  @override
  String get noGoalsTitle => 'Belum ada target tabungan';

  @override
  String get noGoalsBody =>
      'Tetapkan target dan RainyPenny akan melacak progres Anda.';

  @override
  String get fundsAdded => 'Dana ditambahkan';

  @override
  String get newDebt => 'Pinjaman atau kartu baru';

  @override
  String get editDebt => 'Edit pinjaman';

  @override
  String get debtName => 'Nama';

  @override
  String get debtNameHint => 'mis. Pinjaman mobil';

  @override
  String get lender => 'Pemberi pinjaman';

  @override
  String get lenderHint => 'mis. Meridian Bank';

  @override
  String get originalAmount => 'Jumlah awal';

  @override
  String get creditLimit => 'Batas kredit';

  @override
  String get remainingBalance => 'Saldo tersisa';

  @override
  String get interestRatePercent => 'Suku bunga (%)';

  @override
  String get kindLoan => 'Pinjaman';

  @override
  String get kindCreditCard => 'Kartu kredit';

  @override
  String get recordPayment => 'Catat pembayaran';

  @override
  String get paymentRecorded => 'Pembayaran dicatat';

  @override
  String get deleteDebt => 'Hapus utang ini?';

  @override
  String deleteDebtBody(String name) {
    return '$name akan dihapus dari daftar utang Anda.';
  }

  @override
  String get debtSaved => 'Disimpan';

  @override
  String get debtDeleted => 'Dihapus';

  @override
  String get noDebtsTitle => 'Belum ada utang yang dilacak';

  @override
  String get noDebtsBody =>
      'Tambahkan pinjaman atau kartu kredit untuk memantau pembayaran kembali.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Anggaran $subject terlampaui';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Anda telah melebihi anggaran $subject sebesar $amount untuk periode ini.';
  }

  @override
  String insightBudgetApproachingTitle(String subject) {
    return '$subject mendekati batas';
  }

  @override
  String insightBudgetApproachingBody(
    String subject,
    int percent,
    String amount,
  ) {
    return 'Anggaran $subject Anda telah terpakai $percent%, tersisa $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Pengeluaran melebihi pendapatan';

  @override
  String get insightOverIncomeBody =>
      'Anda membelanjakan lebih banyak daripada yang Anda hasilkan pada periode ini. Tinjau kategori terbesar Anda untuk menyeimbangkan kembali keuangan.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Pengeluaran $subject meningkat';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Pengeluaran $subject Anda $percent% lebih tinggi dibandingkan periode sebelumnya.';
  }

  @override
  String get insightTrendDownTitle => 'Pengeluaran sedang menurun';

  @override
  String insightTrendDownBody(int percent) {
    return 'Pengeluaran secara keseluruhan $percent% lebih rendah dibandingkan periode sebelumnya.';
  }

  @override
  String get insightTrendUpTitle => 'Pengeluaran sedang meningkat';

  @override
  String insightTrendUpBody(int percent) {
    return 'Pengeluaran secara keseluruhan $percent% lebih tinggi dibandingkan periode sebelumnya.';
  }

  @override
  String get insightSavingsStrongTitle => 'Tabungan kuat pada periode ini';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Anda menyisihkan $percent% dari pendapatan — jauh di atas target $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Tingkat tabungan di bawah target';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Anda menyisihkan $percent% dari pendapatan pada periode ini. Targetkan $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject hampir terpenuhi';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Tinggal $amount lagi untuk mencapai $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return 'Progres $subject sesuai rencana';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months bulan',
      one: '1 bulan',
    );
    return 'Dengan menabung $amount per bulan, Anda akan mencapai target ini dalam $_temp0.';
  }

  @override
  String insightDebtOverdueTitle(String subject) {
    return 'Pembayaran $subject terlambat';
  }

  @override
  String insightDebtOverdueBody(String subject, String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari',
      one: '1 hari',
    );
    return 'Pembayaran $subject sebesar $amount telah terlambat $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Pembayaran $subject akan segera jatuh tempo';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'dalam $days hari',
      one: 'besok',
      zero: 'hari ini',
    );
    return '$amount jatuh tempo $_temp0.';
  }

  @override
  String get signIn => 'Masuk';

  @override
  String get signUp => 'Buat akun';

  @override
  String get signInSubtitle =>
      'Selamat datang kembali. Keuangan Anda menunggu.';

  @override
  String get signUpSubtitle => 'Isi beberapa detail dan Anda siap memulai.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'you@email.com';

  @override
  String get passwordLabel => 'Kata sandi';

  @override
  String get passwordHint => 'Minimal 8 karakter';

  @override
  String get fullNameLabel => 'Nama lengkap';

  @override
  String get fullNameHint => 'Alex Morgan';

  @override
  String get forgotPassword => 'Lupa kata sandi?';

  @override
  String get resetSent => 'Periksa kotak masuk Anda untuk tautan reset';

  @override
  String get noAccountYet => 'Pengguna baru?';

  @override
  String get haveAccount => 'Sudah memiliki akun?';

  @override
  String get emailInvalid => 'Masukkan alamat email yang valid';

  @override
  String get passwordTooShort => 'Gunakan minimal 8 karakter';

  @override
  String get signOutConfirm => 'Keluar?';

  @override
  String get signOutBody =>
      'Anda harus masuk kembali untuk melihat keuangan Anda.';

  @override
  String get dataSource => 'Sumber data';

  @override
  String get insightWeeklySummaryTitle => 'Ringkasan minggu Anda';

  @override
  String get insightWeeklySummaryBody =>
      'Lihat ke mana uang Anda digunakan minggu ini dan bagaimana kondisi anggaran Anda.';

  @override
  String get notificationSettings => 'Notifikasi';

  @override
  String get alertsSection => 'Peringatan';

  @override
  String get budgetAlerts => 'Peringatan anggaran';

  @override
  String get budgetAlertsBody => 'Saat anggaran mendekati atau melewati batas';

  @override
  String get paymentReminders => 'Pengingat pembayaran';

  @override
  String get paymentRemindersBody =>
      'Beberapa hari sebelum pembayaran jatuh tempo';

  @override
  String get savingsUpdates => 'Pembaruan tabungan';

  @override
  String get savingsUpdatesBody => 'Progres menuju target Anda';

  @override
  String get weeklySummaryLabel => 'Ringkasan mingguan';

  @override
  String get weeklySummaryBody => 'Ringkasan minggu yang baru saja berlalu';

  @override
  String get scheduleSection => 'Waktu';

  @override
  String get reminderTime => 'Waktu pengingat';

  @override
  String get quietHours => 'Jam tenang';

  @override
  String quietHoursValue(String start, String end) {
    return '$start – $end';
  }

  @override
  String get summaryDay => 'Hari ringkasan';

  @override
  String get permissionRequired => 'Notifikasi dinonaktifkan';

  @override
  String get permissionRequiredBody =>
      'Izinkan notifikasi agar RainyPenny dapat memperingatkan Anda sebelum anggaran atau pembayaran terlewat.';

  @override
  String get allowNotifications => 'Izinkan notifikasi';

  @override
  String get permissionDenied =>
      'Notifikasi diblokir. Anda dapat mengaktifkannya di pengaturan perangkat.';

  @override
  String get upcomingAlerts => 'Terjadwal';

  @override
  String get noScheduledAlerts => 'Tidak ada yang dijadwalkan saat ini';

  @override
  String get noScheduledAlertsBody =>
      'Peringatan akan muncul di sini saat anggaran dan pembayaran Anda mendekati batasnya.';

  @override
  String scheduledFor(String date) {
    return 'Dijadwalkan untuk $date';
  }

  @override
  String get everyWeek => 'Setiap minggu';

  @override
  String get allNotificationsOff => 'Semua notifikasi dinonaktifkan';

  @override
  String get needsAttention => 'Perlu perhatian';

  @override
  String get quickActionsTitle => 'Apa yang ingin Anda lakukan?';

  @override
  String get createSection => 'Catat';

  @override
  String get jumpToSection => 'Buka';

  @override
  String get addLoanAction => 'Tambah pinjaman';

  @override
  String get addBudgetAction => 'Tambah anggaran';

  @override
  String get addGoalAction => 'Tambah target';

  @override
  String get longPressHint =>
      'Tips: tahan + untuk langsung mencatat pengeluaran';

  @override
  String get searchCurrencies => 'Cari mata uang';

  @override
  String get noCurrenciesFound => 'Tidak ada mata uang ditemukan';

  @override
  String get noCurrenciesFoundMessage => 'Coba kode, simbol, atau nama lain.';

  @override
  String get popularCurrencies => 'Populer';

  @override
  String get allCurrencies => 'Semua mata uang';

  @override
  String get totalLoanAmount => 'Total jumlah pinjaman';

  @override
  String get installmentAmount => 'Jumlah cicilan';

  @override
  String get numberOfInstallments => 'Jumlah cicilan';

  @override
  String get paidInstallments => 'Cicilan terbayar';

  @override
  String get remainingInstallments => 'Cicilan tersisa';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid dari $total terbayar';
  }

  @override
  String get finalPayment => 'Pembayaran terakhir';

  @override
  String get paymentDueDate => 'Tanggal jatuh tempo pembayaran';

  @override
  String dueOnDayOfMonth(int day) {
    return 'Tanggal $day setiap bulan';
  }

  @override
  String get loanStatus => 'Status';

  @override
  String get statusActive => 'Sesuai rencana';

  @override
  String get statusDueSoon => 'Segera jatuh tempo';

  @override
  String get statusOverdue => 'Terlambat';

  @override
  String get statusCompleted => 'Lunas';

  @override
  String get repaymentProgress => 'Progres pembayaran kembali';

  @override
  String get byAmount => 'Berdasarkan jumlah';

  @override
  String get byInstallments => 'Berdasarkan cicilan';

  @override
  String get startDate => 'Tanggal mulai';

  @override
  String get openEnded => 'Tanpa batas waktu';

  @override
  String get loanDetails => 'Detail pinjaman';

  @override
  String get notSet => 'Belum diatur';

  @override
  String insightDebtDueTodayTitle(String subject) {
    return '$subject jatuh tempo hari ini';
  }

  @override
  String insightDebtDueTodayBody(String amount) {
    return 'Pembayaran $amount Anda jatuh tempo hari ini. Satu ketukan cepat membuatnya tetap tepat waktu.';
  }

  @override
  String get remindMorningTitle => 'Selamat pagi ☀️';

  @override
  String get remindMorningBody =>
      'Mulai hari dengan mengendalikan keuangan Anda. Ada pengeluaran kemarin yang perlu ditambahkan?';

  @override
  String get remindNoonTitle => 'Pengecekan tengah hari';

  @override
  String get remindNoonBody =>
      'Makan siang, kopi, ongkos? Tambahkan dalam beberapa detik.';

  @override
  String get remindAfternoonTitle => 'Pembaruan singkat';

  @override
  String get remindAfternoonBody =>
      'Catat apa yang sudah Anda belanjakan dan pastikan catatan hari ini tetap akurat.';

  @override
  String get remindEveningTitle => 'Menutup hari';

  @override
  String get remindEveningBody =>
      'Dua menit sekarang dan catatan hari ini sudah lengkap.';

  @override
  String get happyWeekendTitle => 'Selamat akhir pekan! 🎉';

  @override
  String get happyWeekendBody =>
      'Nikmati akhir pekan Anda — dan tetap perhatikan pengeluaran akhir pekan.';

  @override
  String get dailyReminders => 'Pengingat pengeluaran harian';

  @override
  String get dailyRemindersBody =>
      'Pengingat ramah untuk menjaga catatan pengeluaran Anda tetap terbaru';

  @override
  String get weekendGreeting => 'Selamat akhir pekan';

  @override
  String get weekendGreetingBody => 'Sapaan ramah di awal akhir pekan Anda';

  @override
  String get reminderTimesSection => 'Waktu pengingat';

  @override
  String get slotMorning => 'Pagi';

  @override
  String get slotNoon => 'Siang';

  @override
  String get slotAfternoon => 'Sore';

  @override
  String get slotEvening => 'Malam';

  @override
  String get everyDay => 'Setiap hari';

  @override
  String get financialReport => 'Laporan Keuangan';

  @override
  String get preparedFor => 'Disiapkan untuk';

  @override
  String get generatedOn => 'Dibuat pada';

  @override
  String get reportDisclaimer =>
      'Dibuat oleh RainyPenny berdasarkan catatan Anda sendiri.';

  @override
  String pageOf(int page, int total) {
    return 'Halaman $page dari $total';
  }

  @override
  String get overview => 'Ringkasan';

  @override
  String get description => 'Deskripsi';

  @override
  String get totalIncome => 'Total pendapatan';

  @override
  String get totalExpenses => 'Total pengeluaran';

  @override
  String get totalSaved => 'Total tabungan';

  @override
  String get shareOfTotal => 'Porsi';

  @override
  String get used => 'Terpakai';

  @override
  String get goal => 'Target';

  @override
  String get targetDate => 'Tanggal target';

  @override
  String get progress => 'Progres';

  @override
  String get paidOffShort => 'Terbayar';

  @override
  String get transactions => 'Transaksi';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dan $count transaksi lainnya',
      one: 'dan 1 transaksi lainnya',
    );
    return '$_temp0';
  }

  @override
  String get exportPdf => 'Ekspor PDF';

  @override
  String get sharePdf => 'Bagikan laporan';

  @override
  String get preparingReport => 'Menyiapkan laporan Anda…';

  @override
  String get reportReady => 'Laporan siap';

  @override
  String get reportFailed => 'Laporan tidak dapat dibuat';

  @override
  String get categories => 'Kategori';

  @override
  String get categoriesIntro =>
      'Tambahkan kategori Anda sendiri untuk mencatat pendapatan dan pengeluaran sesuai cara Anda memikirkannya.';

  @override
  String get expenseCategories => 'Kategori pengeluaran';

  @override
  String get incomeCategories => 'Kategori pendapatan';

  @override
  String get newCategory => 'Kategori baru';

  @override
  String get editCategory => 'Edit kategori';

  @override
  String get categoryName => 'Nama';

  @override
  String get categoryNameHint => 'mis. Perawatan hewan';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategori disimpan';

  @override
  String get categoryDeleted => 'Kategori dihapus';

  @override
  String get deleteCategory => 'Hapus kategori ini?';

  @override
  String deleteCategoryBody(String name) {
    return '$name akan dihapus dari kategori Anda.';
  }

  @override
  String categoryInUse(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count catatan masih menggunakan kategori ini',
      one: '1 catatan masih menggunakan kategori ini',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Belum ada apa pun di sini.';

  @override
  String get builtIn => 'Bawaan';

  @override
  String get manageCategories => 'Kelola kategori';

  @override
  String get expense => 'Pengeluaran';

  @override
  String get languageNote =>
      'Bahasa Arab, Urdu, Persia, dan Ibrani mengubah seluruh antarmuka menjadi kanan-ke-kiri, termasuk grafik dan laporan PDF.';

  @override
  String get next => 'Berikutnya';

  @override
  String get back => 'Kembali';

  @override
  String get skip => 'Lewati';

  @override
  String get continueLabel => 'Lanjutkan';

  @override
  String get selected => 'Dipilih';

  @override
  String get passwordRequired => 'Masukkan kata sandi Anda';

  @override
  String get newPasswordLabel => 'Kata sandi baru';

  @override
  String get confirmPasswordLabel => 'Konfirmasi kata sandi';

  @override
  String get passwordsDoNotMatch => 'Kedua kata sandi harus sama';

  @override
  String get showPassword => 'Tampilkan kata sandi';

  @override
  String get hidePassword => 'Sembunyikan kata sandi';

  @override
  String get savePassword => 'Simpan kata sandi';

  @override
  String get backToSignIn => 'Kembali ke masuk';

  @override
  String get alreadyHaveAccount => 'Saya sudah memiliki akun';

  @override
  String get getStarted => 'Mulai';

  @override
  String get acceptTerms =>
      'Saya menyetujui Ketentuan Layanan dan Kebijakan Privasi';

  @override
  String get acceptTermsRequired => 'Harap setujui untuk melanjutkan';

  @override
  String get passwordStrengthTooShort => 'Terlalu pendek';

  @override
  String get passwordStrengthWeak => 'Lemah';

  @override
  String get passwordStrengthFair => 'Cukup';

  @override
  String get passwordStrengthGood => 'Baik';

  @override
  String get passwordStrengthStrong => 'Kuat';

  @override
  String get passwordAdvice =>
      'Frasa panjang yang mudah Anda ingat lebih baik daripada kata sandi pendek yang penuh simbol. Hindari apa pun yang sudah Anda gunakan di tempat lain.';

  @override
  String get authInvalidCredentials =>
      'Email dan kata sandi tersebut tidak cocok dengan akun mana pun';

  @override
  String get authEmailNotConfirmed =>
      'Konfirmasi alamat email Anda sebelum masuk';

  @override
  String get authEmailAlreadyRegistered => 'Akun dengan email ini sudah ada';

  @override
  String get authWeakPassword => 'Pilih kata sandi yang lebih panjang';

  @override
  String get authRateLimited =>
      'Terlalu banyak percobaan. Coba lagi dalam beberapa menit';

  @override
  String get authNetworkError =>
      'Tidak ada koneksi. Periksa jaringan Anda dan coba lagi';

  @override
  String get authGenericError => 'Terjadi kesalahan. Silakan coba lagi';

  @override
  String get confirmEmailTitle => 'Periksa email Anda';

  @override
  String confirmEmailBody(String email) {
    return 'Kami mengirim tautan konfirmasi ke $email. Buka tautan tersebut untuk menyelesaikan penyiapan akun Anda.';
  }

  @override
  String get resendConfirmation => 'Kirim ulang email konfirmasi';

  @override
  String get confirmationResent => 'Email konfirmasi dikirim';

  @override
  String get forgotPasswordTitle => 'Atur ulang kata sandi';

  @override
  String get forgotPasswordSubtitle =>
      'Masukkan email yang Anda gunakan saat mendaftar dan kami akan mengirimkan tautan untuk memilih kata sandi baru.';

  @override
  String get sendResetLink => 'Kirim tautan reset';

  @override
  String get resetLinkSentTitle => 'Tautan reset dikirim';

  @override
  String resetLinkSentBody(String email) {
    return 'Jika $email memiliki akun, tautan reset sedang dikirim.';
  }

  @override
  String get resetLinkSentHint =>
      'Tautan akan kedaluwarsa dalam satu jam. Jika tidak sampai, periksa folder spam sebelum meminta yang baru.';

  @override
  String get tryAnotherEmail => 'Gunakan email lain';

  @override
  String get resetPasswordTitle => 'Pilih kata sandi baru';

  @override
  String get resetPasswordSubtitle =>
      'Pilih sesuatu yang belum pernah Anda gunakan pada akun ini sebelumnya.';

  @override
  String get passwordChangedTitle => 'Kata sandi diperbarui';

  @override
  String get passwordChangedBody =>
      'Kata sandi baru Anda telah disimpan. Anda sudah masuk dan siap menggunakannya.';

  @override
  String get demoModeHint => 'Versi demo — tidak perlu akun';

  @override
  String get demoModeFill => 'Isi';

  @override
  String get welcomeTrackTitle => 'Lihat ke mana uang Anda pergi';

  @override
  String get welcomeTrackBody =>
      'Catat apa yang masuk dan keluar. RainyPenny mengubahnya menjadi gambaran yang mudah dipahami.';

  @override
  String get welcomeBudgetTitle => 'Tetapkan batas yang bertahan';

  @override
  String get welcomeBudgetBody =>
      'Berikan batas bulanan untuk setiap bagian pengeluaran Anda, dan dapatkan peringatan sebelum melewatinya, bukan setelahnya.';

  @override
  String get welcomeGoalsTitle => 'Menabung untuk hal yang penting';

  @override
  String get welcomeGoalsBody =>
      'Beri nama target, tetapkan jumlahnya, dan lihat progresnya terisi. Dana hari hujan lebih mudah dibangun ketika Anda dapat melihatnya.';

  @override
  String get welcomePrivacyTitle => 'Uang Anda tetap milik Anda';

  @override
  String get welcomePrivacyBody =>
      'Data keuangan Anda hanya milik Anda. Tidak ada yang dijual dan tidak ada yang dibagikan kepada siapa pun.';

  @override
  String stepOf(int step, int total) {
    return 'Langkah $step dari $total';
  }

  @override
  String get onboardingNameTitle => 'Kami harus memanggil Anda siapa?';

  @override
  String get onboardingNameBody =>
      'Kami akan menggunakannya untuk menyapa Anda, dan tidak untuk hal lain.';

  @override
  String get onboardingNameHint =>
      'Nama depan saja sudah cukup. Anda dapat mengubahnya nanti.';

  @override
  String get onboardingCurrencyTitle => 'Mata uang apa yang Anda gunakan?';

  @override
  String get onboardingCurrencyBody =>
      'Semua jumlah di aplikasi akan ditampilkan dalam mata uang ini. Memilihnya tidak akan mengonversi apa pun.';

  @override
  String get onboardingCurrencySearch => 'Cari semua mata uang';

  @override
  String get onboardingAppearanceTitle => 'Jadikan milik Anda';

  @override
  String get onboardingAppearanceBody =>
      'Pilih tampilan. Semuanya berubah saat Anda memilih, dan Anda dapat kembali mengubahnya kapan saja.';

  @override
  String get onboardingNotificationsTitle => 'Tetap terkendali';

  @override
  String get onboardingNotificationsBody =>
      'Pengingat lembut pada saat yang tepat dapat mengubah ini menjadi kebiasaan.';

  @override
  String get onboardingNotifyReminders =>
      'Pengingat lembut untuk mencatat pengeluaran Anda';

  @override
  String get onboardingNotifyBudget => 'Peringatan sebelum anggaran habis';

  @override
  String get onboardingNotifySummary =>
      'Ringkasan mingguan tentang ke mana uang Anda pergi';

  @override
  String get onboardingNotifyEnable => 'Aktifkan notifikasi';

  @override
  String get onboardingNotifyDone => 'Pengaturan notifikasi disimpan';

  @override
  String get onboardingNotifyLater =>
      'Anda dapat mengubah semuanya di Pengaturan kapan saja.';

  @override
  String get onboardingReadyTitle => 'Anda sudah siap';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Anda sudah siap, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Penyiapan selesai. Apakah Anda ingin melihat panduan singkat tentang cara kerja semuanya?';

  @override
  String get onboardingTakeTour => 'Tunjukkan caranya';

  @override
  String get onboardingGoToApp => 'Bawa saya ke aplikasi';

  @override
  String get onboardingTourLater =>
      'Tidak sekarang? Panduan tetap tersedia di Pengaturan kapan pun Anda membutuhkannya.';

  @override
  String get beginnersGuide => 'Panduan pemula';

  @override
  String get guideFinish => 'Selesai';

  @override
  String chapterOf(int number, int total) {
    return 'Bab $number dari $total';
  }

  @override
  String guideOpenScreen(String screen) {
    return 'Buka $screen';
  }

  @override
  String get guideDashboardTitle => 'Dasbor Anda';

  @override
  String get guideDashboardBody =>
      'Semuanya dimulai di sini. Kartu di bagian atas menunjukkan jumlah yang tersisa; di bawahnya terdapat uang yang masuk dan keluar pada periode ini, lalu pengeluaran, anggaran, dan target Anda.';

  @override
  String get guideDashboardTip1 =>
      'Tarik layar ke bawah untuk menyegarkan semuanya sekaligus.';

  @override
  String get guideDashboardTip2 =>
      'Ketuk kartu pendapatan atau pengeluaran untuk membuka daftar tersebut.';

  @override
  String get guideDashboardTip3 =>
      'Lingkaran dan insight diperbarui segera setelah Anda mencatat sesuatu.';

  @override
  String get guideAddTitle => 'Mencatat uang';

  @override
  String get guideAddBody =>
      'Tombol di tengah bilah adalah tempat semuanya dimulai. Tombol ini membuka menu singkat: uang keluar, uang masuk, utang, anggaran, atau target tabungan.';

  @override
  String get guideAddTip1 =>
      'Ketuk tombol tengah untuk mencatat uang masuk atau keluar.';

  @override
  String get guideAddTip2 =>
      'Tekan dan tahan untuk langsung membuat pengeluaran baru tanpa membuka menu.';

  @override
  String get guideAddTip3 =>
      'Selalu pilih kategori — inilah yang membuat grafik dan anggaran berfungsi.';

  @override
  String get guideCategoriesTitle => 'Kategori';

  @override
  String get guideCategoriesBody =>
      'Kategori digunakan untuk mengelompokkan pengeluaran. Kategori bawaan mencakup sebagian besar kebutuhan, dan Anda dapat mengganti namanya atau menambahkan kategori sendiri.';

  @override
  String get guideCategoriesTip1 =>
      'Buka Pengaturan, lalu Kelola kategori, untuk mengubah atau menambahkan kategori.';

  @override
  String get guideCategoriesTip2 =>
      'Apa pun yang tidak dikategorikan masuk ke Lainnya, sehingga grafik tetap akurat.';

  @override
  String get guideBudgetTitle => 'Anggaran';

  @override
  String get guideBudgetBody =>
      'Anggaran adalah batas bulanan untuk satu kategori. Bilah akan terisi saat Anda berbelanja dan berubah saat mendekati batas, sehingga Anda mengetahuinya sebelum melewatinya.';

  @override
  String get guideBudgetTip1 =>
      'Mulailah dengan dua atau tiga kategori, bukan semuanya sekaligus.';

  @override
  String get guideBudgetTip2 =>
      'Tetapkan batas sedikit di atas pengeluaran biasanya, lalu perketat secara bertahap.';

  @override
  String get guideBudgetTip3 =>
      'Biarkan peringatan anggaran aktif dan aplikasi akan memperingatkan Anda saat anggaran hampir habis.';

  @override
  String get guideSavingsTitle => 'Target tabungan';

  @override
  String get guideSavingsBody =>
      'Beri nama tujuan tabungan Anda, tetapkan target dan tanggal, lalu aplikasi menghitung jumlah yang perlu Anda sisihkan setiap bulan untuk mencapainya.';

  @override
  String get guideSavingsTip1 =>
      'Target yang memiliki nama lebih mudah dipertahankan daripada niat menabung yang masih samar.';

  @override
  String get guideSavingsTip2 =>
      'Beberapa target kecil lebih sering selesai daripada satu target besar.';

  @override
  String get guideLoansTitle => 'Utang dan pinjaman';

  @override
  String get guideLoansBody =>
      'Catat jumlah yang Anda utang, biayanya, dan kapan pembayaran berikutnya jatuh tempo. Semua yang sedang Anda lunasi berada dalam satu daftar dengan total yang masih tersisa.';

  @override
  String get guideLoansTip1 =>
      'Tambahkan tanggal jatuh tempo dan pengingat pembayaran akan mengingatkannya untuk Anda.';

  @override
  String get guideLoansTip2 =>
      'Utang yang ditandai terlambat akan muncul berwarna merah di dasbor sampai dibayar.';

  @override
  String get guideReportsTitle => 'Laporan';

  @override
  String get guideReportsBody =>
      'Tampilan yang lebih mendalam: pendapatan dibandingkan pengeluaran, pengeluaran berdasarkan kategori, kondisi anggaran Anda, dan porsi pendapatan yang berhasil Anda simpan.';

  @override
  String get guideReportsTip1 =>
      'Beralih antara minggu, bulan, dan kuartal di bagian atas layar.';

  @override
  String get guideReportsTip2 =>
      'Ekspor atau bagikan PDF — hasilnya menggunakan bahasa dan arah tulisan Anda sendiri.';

  @override
  String get guideSettingsTitle => 'Pengaturan';

  @override
  String get guideSettingsBody =>
      'Bahasa, mata uang, warna, dan peringatan semuanya ada di sini, dan tidak ada yang terkunci setelah penyiapan — ubah kapan pun Anda mau.';

  @override
  String get guideSettingsTip1 =>
      'Empat puluh bahasa, dan seluruh tata letak dicerminkan untuk bahasa yang ditulis dari kanan ke kiri.';

  @override
  String get guideSettingsTip2 =>
      'Pilih peringatan yang Anda inginkan dan waktu pengirimannya.';

  @override
  String get guideSettingsTip3 => 'Jam tenang menahan semuanya hingga pagi.';

  @override
  String get guideHabitTitle => 'Jadikan kebiasaan';

  @override
  String get guideHabitBody =>
      'Aplikasi ini hanya sebaik data yang Anda masukkan. Satu menit setiap hari lebih baik daripada satu jam sebulan sekali, dan setelah dua minggu angka-angka mulai menunjukkan sesuatu.';

  @override
  String get guideHabitTip1 =>
      'Catat pengeluaran saat terjadi, bukan di akhir minggu.';

  @override
  String get guideHabitTip2 =>
      'Lihat sekilas dasbor sekali sehari. Sepuluh detik sudah cukup.';

  @override
  String get guideHabitTip3 =>
      'Panduan ini tetap tersedia di Pengaturan — kembali kapan pun Anda mau.';

  @override
  String get appearance => 'Tampilan';

  @override
  String get themeCaption =>
      'Terang, gelap, atau mengikuti pengaturan ponsel Anda.';

  @override
  String get accentColor => 'Warna aksen';

  @override
  String get accentColorCaption =>
      'Memberi warna pada tombol, sorotan, dan grafik.';

  @override
  String get accentSemanticsNote =>
      'Pendapatan dan pengeluaran mempertahankan warna masing-masing di setiap tema, sehingga angka tidak pernah berubah maknanya hanya karena Anda mengubah aksen.';

  @override
  String get accentTeal => 'Hijau kebiruan';

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
  String get accentPink => 'Merah muda';

  @override
  String get accentCrimson => 'Merah tua';

  @override
  String get accentOrange => 'Oranye';

  @override
  String get accentSlate => 'Abu-abu batu';

  @override
  String get searchLanguages => 'Cari bahasa';

  @override
  String get suggestedLanguages => 'Disarankan';

  @override
  String get allLanguages => 'Semua bahasa';

  @override
  String get noLanguagesFound => 'Tidak ada bahasa ditemukan';

  @override
  String get noLanguagesFoundMessage =>
      'Coba nama dalam bahasa Inggris atau kode dua huruf.';

  @override
  String get rightToLeft => 'Kanan ke kiri';

  @override
  String get replayGuide => 'Putar ulang panduan';

  @override
  String get replaySetup => 'Jalankan penyiapan lagi';

  @override
  String get replaySetupBody =>
      'Jawab kembali pertanyaan penyiapan awal. Tidak ada data yang telah Anda catat yang akan dihapus.';

  @override
  String get rateTitle => 'Menyukai RainyPenny?';

  @override
  String get rateBody =>
      'Anda sudah menggunakannya selama beberapa waktu. Memberikan rating hanya membutuhkan waktu sebentar dan membantu orang lain menemukan aplikasi ini.';

  @override
  String get rateAction => 'Beri rating aplikasi';

  @override
  String get rateLater => 'Mungkin nanti';

  @override
  String get rateNever => 'Tidak, terima kasih';

  @override
  String get rateThanks => 'Terima kasih';

  @override
  String get monthlySalary => 'Gaji bulanan';

  @override
  String get remainingAmount => 'Tersisa';

  @override
  String get carriedForward => 'Dibawa dari periode sebelumnya';

  @override
  String get carriedForwardHint => 'Sisa dari periode sebelumnya';

  @override
  String get totalSpending => 'Total pengeluaran';

  @override
  String get salaryCycle => 'Siklus gaji';

  @override
  String get payday => 'Hari gajian';

  @override
  String get paydayDescription =>
      'Hari saat gaji Anda diterima. Bulan keuangan Anda berlangsung dari hari ini hingga sehari sebelum hari gajian berikutnya.';

  @override
  String get paydayUpdated => 'Hari gajian diperbarui';

  @override
  String paydayDayOfMonth(int day) {
    return 'Tanggal $day';
  }

  @override
  String get paydayShortMonthNote =>
      'Pada bulan yang lebih pendek, siklus dimulai pada hari terakhir sebagai gantinya.';

  @override
  String daysLeftInCycle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari menuju gajian',
      one: '1 hari menuju gajian',
      zero: 'Hari terakhir siklus',
    );
    return '$_temp0';
  }

  @override
  String get nextPayday => 'Gajian berikutnya';

  @override
  String get spentSoFar => 'Terpakai sejauh ini';

  @override
  String get dailyAllowance => 'Aman untuk dibelanjakan per hari';

  @override
  String get overspentNotice =>
      'Anda telah membelanjakan lebih banyak daripada pendapatan yang masuk pada siklus ini.';

  @override
  String get backToThisMonth => 'Kembali ke bulan ini';

  @override
  String get cycleRangeLabel => 'Siklus';

  @override
  String get noSalaryRecorded => 'Belum ada gaji yang dicatat';

  @override
  String get addSalaryAction => 'Tambahkan gaji Anda';

  @override
  String cycleOf(String start, String end) {
    return '$start – $end';
  }

  @override
  String get healthExcellent => 'Sangat baik';

  @override
  String get healthGood => 'Baik';

  @override
  String get healthFair => 'Cukup';

  @override
  String get healthNeedsWork => 'Perlu diperbaiki';

  @override
  String get healthExcellentBody =>
      'Anda menabung dengan baik dan tetap berada dalam anggaran.';

  @override
  String get healthGoodBody =>
      'Pengeluaran Anda sesuai rencana pada periode ini.';

  @override
  String get healthFairBody =>
      'Beberapa anggaran mulai tinggi. Perubahan kecil akan membantu.';

  @override
  String get healthNeedsWorkBody =>
      'Pengeluaran Anda melampaui rencana. Mulailah dari kategori terbesar.';

  @override
  String get factorSavingsRate => 'Tingkat tabungan';

  @override
  String get factorBudgetControl => 'Kendali anggaran';

  @override
  String get factorDebtLoad => 'Beban utang';

  @override
  String get factorSpendingTrend => 'Tren pengeluaran';

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
    return '$percent% dari pendapatan';
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
  String get howScoreWorks => 'Cara kerja skor ini';

  @override
  String get healthScoreExplainer =>
      'Skor Anda menggabungkan empat hal: seberapa banyak pendapatan yang Anda simpan, seberapa baik Anda tetap dalam anggaran, seberapa besar pendapatan yang digunakan untuk utang, dan apakah pengeluaran Anda meningkat atau menurun.';

  @override
  String scoreWeightLabel(int percent) {
    return '$percent% dari skor';
  }

  @override
  String get viewHealthDetails => 'Lihat rinciannya';

  @override
  String get saveChanges => 'Simpan perubahan';

  @override
  String get profileUpdated => 'Profil diperbarui';

  @override
  String get changePhoto => 'Ubah foto';

  @override
  String get removePhoto => 'Hapus foto';

  @override
  String get personalInformationIntro =>
      'Nama dan foto Anda akan muncul di seluruh aplikasi. Email Anda adalah alamat yang digunakan untuk masuk.';

  @override
  String get emailNotEditable =>
      'Hubungi dukungan untuk mengubah alamat yang Anda gunakan untuk masuk.';

  @override
  String get pressBackAgainToExit => 'Tekan kembali sekali lagi untuk keluar';

  @override
  String get categoryHousing => 'Perumahan';

  @override
  String get categoryFood => 'Makanan & Restoran';

  @override
  String get categoryTransport => 'Transportasi';

  @override
  String get categoryShopping => 'Belanja';

  @override
  String get categoryBills => 'Tagihan & Utilitas';

  @override
  String get categoryEntertainment => 'Hiburan';

  @override
  String get categoryHealth => 'Kesehatan & Kebugaran';

  @override
  String get categoryEducation => 'Pendidikan';

  @override
  String get categoryTravel => 'Perjalanan';

  @override
  String get categorySalary => 'Gaji';

  @override
  String get categoryFreelance => 'Freelance';

  @override
  String get categoryInvestments => 'Investasi';

  @override
  String get categoryGift => 'Hadiah';

  @override
  String get categoryOther => 'Lainnya';

  @override
  String get categoryGroceries => 'Belanja kebutuhan';

  @override
  String get categoryDining => 'Restoran';

  @override
  String get categoryCoffee => 'Kopi';

  @override
  String get categoryUtilities => 'Utilitas';

  @override
  String get categoryInternet => 'Internet';

  @override
  String get categoryPhone => 'Telepon';

  @override
  String get categoryInsurance => 'Asuransi';

  @override
  String get categorySubscriptions => 'Langganan';

  @override
  String get categoryPersonalCare => 'Perawatan pribadi';

  @override
  String get categoryClothing => 'Pakaian';

  @override
  String get categoryElectronics => 'Elektronik';

  @override
  String get categoryHomeSupplies => 'Perlengkapan rumah';

  @override
  String get categoryPets => 'Hewan peliharaan';

  @override
  String get categoryChildcare => 'Perawatan anak';

  @override
  String get categoryFamily => 'Keluarga';

  @override
  String get categoryFitness => 'Kebugaran';

  @override
  String get categorySports => 'Olahraga';

  @override
  String get categoryMedicine => 'Obat-obatan';

  @override
  String get categoryMedical => 'Perawatan medis';

  @override
  String get categoryCharity => 'Donasi';

  @override
  String get categoryTaxes => 'Pajak';

  @override
  String get categoryFees => 'Biaya';

  @override
  String get categoryDebt => 'Utang';

  @override
  String get categorySavings => 'Tabungan';

  @override
  String get categoryRepairs => 'Perbaikan';

  @override
  String get categoryCarMaintenance => 'Perawatan mobil';

  @override
  String get categoryFuel => 'Bahan bakar';

  @override
  String get categoryParking => 'Parkir';

  @override
  String get categoryPublicTransport => 'Transportasi umum';

  @override
  String get categoryRent => 'Sewa';

  @override
  String get categoryMortgage => 'KPR';

  @override
  String get categoryBonus => 'Bonus';

  @override
  String get categoryCommission => 'Komisi';

  @override
  String get categoryPension => 'Pensiun';

  @override
  String get categoryInterest => 'Bunga';

  @override
  String get categoryDividends => 'Dividen';

  @override
  String get categoryCashback => 'Cashback';

  @override
  String get categoryRefund => 'Pengembalian dana';

  @override
  String get categoryRentalIncome => 'Pendapatan sewa';

  @override
  String get addCategory => 'Kategori baru';

  @override
  String get filterByCategory => 'Filter berdasarkan kategori';

  @override
  String get allCategories => 'Semua kategori';

  @override
  String get clearFilters => 'Hapus filter';

  @override
  String spentInCategory(String category, String amount) {
    return '$category  ·  $amount';
  }

  @override
  String get allTime => 'Sepanjang waktu';

  @override
  String get customRange => 'Kustom';

  @override
  String get selectDateRange => 'Pilih periode';

  @override
  String rangeApplied(String start, String end) {
    return 'Menampilkan $start – $end';
  }

  @override
  String get loans => 'Pinjaman';

  @override
  String get debts => 'Utang';

  @override
  String get noLoansTitle => 'Tidak ada pinjaman';

  @override
  String get noLoansBody => 'Anda tidak memiliki pinjaman aktif.';

  @override
  String get emptyHealthTitle => 'Belum Ada Skor Keuangan';

  @override
  String get emptyHealthDescription =>
      'Kami membutuhkan sedikit aktivitas keuangan sebelum dapat menghitung skor kesehatan yang akurat.';

  @override
  String get emptyHealthAddTransactions =>
      'Tambahkan transaksi pendapatan atau pengeluaran';

  @override
  String get emptyHealthSetBudgets => 'Atur anggaran bulanan Anda';

  @override
  String get emptyHealthTrackLoans => 'Lacak pinjaman atau utang (opsional)';

  @override
  String get emptyHealthCardSubtitle =>
      'Tambahkan transaksi untuk menghitung skor dan mendapatkan insight.';

  @override
  String get smartBudgetSplit => 'Pembagian Anggaran Cerdas';

  @override
  String get smartBudgetSplitSubtitle =>
      'Masukkan gaji bulanan Anda untuk menghitung batas yang direkomendasikan';

  @override
  String get monthlyNetSalary => 'Gaji Bersih Bulanan';

  @override
  String get categoryAllocations => 'Alokasi Kategori';

  @override
  String totalBudgeted(String amount) {
    return 'Total: $amount';
  }

  @override
  String get applyAllBudgets => 'Terapkan Semua Anggaran';

  @override
  String get applyingBudgets => 'Menerapkan anggaran...';

  @override
  String budgetsCreatedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count anggaran kategori dibuat.',
      one: '1 anggaran kategori dibuat.',
    );
    return '$_temp0';
  }

  @override
  String get failedToSaveBudgets => 'Gagal menyimpan anggaran.';

  @override
  String get recommendedBudget => 'Anggaran yang direkomendasikan';
}

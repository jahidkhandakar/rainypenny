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
  String get greetingSubtitle => 'Ini gambaran keuangan Anda';

  @override
  String get totalBalance => 'Total saldo';

  @override
  String get vsLastPeriod => 'vs. periode lalu';

  @override
  String get income => 'Pemasukan';

  @override
  String get expenses => 'Pengeluaran';

  @override
  String get netBalance => 'Saldo bersih';

  @override
  String get lastThirtyDays => '30 hari terakhir';

  @override
  String get quickActions => 'Aksi cepat';

  @override
  String get addIncome => 'Tambah pemasukan';

  @override
  String get addExpense => 'Tambah pengeluaran';

  @override
  String get spendingOverview => 'Ringkasan pengeluaran';

  @override
  String get recentTransactions => 'Transaksi terbaru';

  @override
  String get seeAll => 'Lihat semua';

  @override
  String get viewAll => 'Tampilkan semua';

  @override
  String get budgetProgress => 'Progres anggaran';

  @override
  String get savingsGoals => 'Target tabungan';

  @override
  String get financialInsight => 'Wawasan keuangan';

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
  String get filterIncome => 'Pemasukan';

  @override
  String get filterExpenses => 'Pengeluaran';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Kemarin';

  @override
  String get noTransactionsTitle => 'Transaksi tidak ditemukan';

  @override
  String get noTransactionsBody =>
      'Coba kata pencarian atau filter lain untuk melihat lebih banyak catatan.';

  @override
  String transactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaksi',
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
  String get noteHint => 'Catatan (opsional)';

  @override
  String get saveIncome => 'Simpan pemasukan';

  @override
  String get saveExpense => 'Simpan pengeluaran';

  @override
  String get selectCategory => 'Pilih kategori';

  @override
  String get transactionSaved => 'Transaksi tersimpan';

  @override
  String get amountRequired => 'Masukkan jumlah lebih dari nol';

  @override
  String get titleRequired => 'Beri nama transaksi ini';

  @override
  String get descriptionLabel => 'Keterangan';

  @override
  String get descriptionHint => 'mis. belanja bulanan';

  @override
  String get budget => 'Anggaran';

  @override
  String get budgets => 'Anggaran';

  @override
  String get totalBudget => 'Total anggaran';

  @override
  String get spent => 'Terpakai';

  @override
  String get remaining => 'Sisa';

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
  String get saved => 'Terkumpul';

  @override
  String get target => 'Target';

  @override
  String get monthlyContribution => 'Per bulan';

  @override
  String get addFunds => 'Tambah dana';

  @override
  String get goalComplete => 'Target tercapai';

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
  String get loansAndDebts => 'Pinjaman & utang';

  @override
  String get totalOutstanding => 'Total sisa utang';

  @override
  String get monthlyPayment => 'Per bulan';

  @override
  String get nextPayment => 'Pembayaran berikutnya';

  @override
  String paidOff(int percent) {
    return '$percent% lunas';
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
      other: 'Jatuh tempo $count hari lagi',
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
  String get incomeVsExpenses => 'Pemasukan vs. pengeluaran';

  @override
  String get spendingByCategory => 'Pengeluaran per kategori';

  @override
  String get budgetPerformance => 'Kinerja anggaran';

  @override
  String get insights => 'Wawasan';

  @override
  String get savingsRate => 'Rasio tabungan';

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
  String get themeSystem => 'Ikuti sistem';

  @override
  String get themeLight => 'Terang';

  @override
  String get themeDark => 'Gelap';

  @override
  String get settings => 'Pengaturan';

  @override
  String get noNotificationsTitle => 'Semua sudah terbaca';

  @override
  String get noNotificationsBody =>
      'Wawasan dan pengingat baru akan muncul di sini.';

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
  String get comingSoon => 'Segera hadir di versi lengkap';

  @override
  String get edit => 'Ubah';

  @override
  String get delete => 'Hapus';

  @override
  String get undo => 'Urungkan';

  @override
  String get add => 'Tambah';

  @override
  String get create => 'Buat';

  @override
  String get nameRequired => 'Beri nama untuk ini';

  @override
  String get amountAboveZero => 'Masukkan jumlah lebih dari nol';

  @override
  String get editTransaction => 'Ubah transaksi';

  @override
  String get deleteTransaction => 'Hapus transaksi?';

  @override
  String deleteTransactionBody(String title) {
    return '$title akan dihapus dari catatan Anda.';
  }

  @override
  String get transactionDeleted => 'Transaksi dihapus';

  @override
  String get transactionUpdated => 'Transaksi diperbarui';

  @override
  String get newBudget => 'Anggaran baru';

  @override
  String get editBudget => 'Ubah anggaran';

  @override
  String get budgetLimit => 'Batas bulanan';

  @override
  String get deleteBudget => 'Hapus anggaran?';

  @override
  String deleteBudgetBody(String category) {
    return 'Anggaran $category akan dihapus. Transaksi Anda tidak terpengaruh.';
  }

  @override
  String get budgetSaved => 'Anggaran tersimpan';

  @override
  String get budgetDeleted => 'Anggaran dihapus';

  @override
  String get allCategoriesBudgeted => 'Semua kategori sudah punya anggaran';

  @override
  String get noBudgetsTitle => 'Belum ada anggaran';

  @override
  String get noBudgetsBody =>
      'Tetapkan batas bulanan pada sebuah kategori untuk mulai memantaunya.';

  @override
  String get newGoal => 'Target baru';

  @override
  String get editGoal => 'Ubah target';

  @override
  String get goalName => 'Nama target';

  @override
  String get goalNameHint => 'mis. dana darurat';

  @override
  String get targetAmount => 'Jumlah target';

  @override
  String get alreadySaved => 'Sudah terkumpul';

  @override
  String get deleteGoal => 'Hapus target?';

  @override
  String deleteGoalBody(String name) {
    return '$name dan progresnya akan dihapus.';
  }

  @override
  String get goalSaved => 'Target tersimpan';

  @override
  String get goalDeleted => 'Target dihapus';

  @override
  String get noGoalsTitle => 'Belum ada target tabungan';

  @override
  String get noGoalsBody =>
      'Tetapkan target dan RainyPenny akan memantau kemajuan Anda.';

  @override
  String get fundsAdded => 'Dana ditambahkan';

  @override
  String get newDebt => 'Pinjaman atau kartu baru';

  @override
  String get editDebt => 'Ubah pinjaman';

  @override
  String get debtName => 'Nama';

  @override
  String get debtNameHint => 'mis. kredit mobil';

  @override
  String get lender => 'Pemberi pinjaman';

  @override
  String get lenderHint => 'mis. Bank Mandiri';

  @override
  String get originalAmount => 'Jumlah awal';

  @override
  String get creditLimit => 'Limit kredit';

  @override
  String get remainingBalance => 'Sisa saldo';

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
  String get debtSaved => 'Tersimpan';

  @override
  String get debtDeleted => 'Dihapus';

  @override
  String get noDebtsTitle => 'Tidak ada utang yang dipantau';

  @override
  String get noDebtsBody =>
      'Tambahkan pinjaman atau kartu kredit untuk mengawasi cicilan.';

  @override
  String insightBudgetExceededTitle(String subject) {
    return 'Anggaran $subject terlampaui';
  }

  @override
  String insightBudgetExceededBody(String amount, String subject) {
    return 'Anda melebihi anggaran $subject sebesar $amount pada periode ini.';
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
    return 'Anggaran $subject sudah terpakai $percent%, tersisa $amount.';
  }

  @override
  String get insightOverIncomeTitle => 'Pengeluaran melebihi pemasukan';

  @override
  String get insightOverIncomeBody =>
      'Periode ini Anda membelanjakan lebih dari yang Anda hasilkan. Tinjau kategori terbesar untuk menyeimbangkannya kembali.';

  @override
  String insightCategoryUpTitle(String subject) {
    return 'Pengeluaran $subject naik';
  }

  @override
  String insightCategoryUpBody(String subject, int percent) {
    return 'Pengeluaran $subject Anda $percent% lebih tinggi dari periode sebelumnya.';
  }

  @override
  String get insightTrendDownTitle => 'Pengeluaran menurun';

  @override
  String insightTrendDownBody(int percent) {
    return 'Pengeluaran keseluruhan $percent% lebih rendah dari periode sebelumnya.';
  }

  @override
  String get insightTrendUpTitle => 'Pengeluaran meningkat';

  @override
  String insightTrendUpBody(int percent) {
    return 'Pengeluaran keseluruhan $percent% lebih tinggi dari periode sebelumnya.';
  }

  @override
  String get insightSavingsStrongTitle => 'Tabungan periode ini bagus';

  @override
  String insightSavingsStrongBody(int percent, int target) {
    return 'Anda menyisihkan $percent% dari pemasukan — jauh di atas target $target%.';
  }

  @override
  String get insightSavingsLowTitle => 'Rasio tabungan di bawah target';

  @override
  String insightSavingsLowBody(int percent, int target) {
    return 'Periode ini Anda menyisihkan $percent% dari pemasukan. Sasarannya $target%.';
  }

  @override
  String insightGoalNearlyTitle(String subject) {
    return '$subject hampir tercapai';
  }

  @override
  String insightGoalNearlyBody(String amount, String subject) {
    return 'Tinggal $amount lagi untuk mencapai $subject.';
  }

  @override
  String insightGoalOnTrackTitle(String subject) {
    return '$subject sesuai rencana';
  }

  @override
  String insightGoalOnTrackBody(String amount, int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months bulan',
    );
    return 'Dengan $amount per bulan, target ini tercapai dalam $_temp0.';
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
    );
    return 'Pembayaran $subject sebesar $amount terlambat $_temp0.';
  }

  @override
  String insightDebtDueTitle(String subject) {
    return 'Pembayaran $subject mendekat';
  }

  @override
  String insightDebtDueBody(String amount, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari lagi',
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
  String get signInSubtitle => 'Selamat datang kembali. Uang Anda menunggu.';

  @override
  String get signUpSubtitle => 'Beberapa isian saja dan Anda siap.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'kamu@email.com';

  @override
  String get passwordLabel => 'Kata sandi';

  @override
  String get passwordHint => 'Minimal 8 karakter';

  @override
  String get fullNameLabel => 'Nama lengkap';

  @override
  String get fullNameHint => 'Andi Pratama';

  @override
  String get forgotPassword => 'Lupa kata sandi?';

  @override
  String get resetSent => 'Cek email Anda untuk tautan pengaturan ulang';

  @override
  String get noAccountYet => 'Baru di sini?';

  @override
  String get haveAccount => 'Sudah punya akun?';

  @override
  String get emailInvalid => 'Masukkan alamat email yang valid';

  @override
  String get passwordTooShort => 'Gunakan minimal 8 karakter';

  @override
  String get signOutConfirm => 'Keluar?';

  @override
  String get signOutBody =>
      'Anda perlu masuk lagi untuk melihat keuangan Anda.';

  @override
  String get dataSource => 'Sumber data';

  @override
  String get insightWeeklySummaryTitle => 'Minggu Anda';

  @override
  String get insightWeeklySummaryBody =>
      'Lihat ke mana uang Anda pergi minggu ini dan bagaimana anggaran Anda bertahan.';

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
  String get paymentRemindersBody => 'Beberapa hari sebelum jatuh tempo';

  @override
  String get savingsUpdates => 'Kabar tabungan';

  @override
  String get savingsUpdatesBody => 'Kemajuan menuju target Anda';

  @override
  String get weeklySummaryLabel => 'Ringkasan mingguan';

  @override
  String get weeklySummaryBody => 'Rangkuman minggu yang baru lewat';

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
  String get permissionRequired => 'Notifikasi dimatikan';

  @override
  String get permissionRequiredBody =>
      'Izinkan notifikasi agar RainyPenny bisa memperingatkan Anda sebelum anggaran atau pembayaran lepas kendali.';

  @override
  String get allowNotifications => 'Izinkan notifikasi';

  @override
  String get permissionDenied =>
      'Notifikasi diblokir. Anda bisa mengaktifkannya di pengaturan perangkat.';

  @override
  String get upcomingAlerts => 'Terjadwal';

  @override
  String get noScheduledAlerts => 'Belum ada yang terjadwal';

  @override
  String get noScheduledAlertsBody =>
      'Peringatan muncul di sini saat anggaran dan pembayaran mendekati batasnya.';

  @override
  String scheduledFor(String date) {
    return 'Dijadwalkan $date';
  }

  @override
  String get everyWeek => 'Setiap minggu';

  @override
  String get allNotificationsOff => 'Semua notifikasi mati';

  @override
  String get needsAttention => 'Perlu perhatian';

  @override
  String get quickActionsTitle => 'Ingin melakukan apa?';

  @override
  String get createSection => 'Catat';

  @override
  String get jumpToSection => 'Lompat ke';

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
  String get noCurrenciesFound => 'Mata uang tidak ditemukan';

  @override
  String get noCurrenciesFoundMessage => 'Coba kode, simbol, atau nama lain.';

  @override
  String get popularCurrencies => 'Populer';

  @override
  String get allCurrencies => 'Semua mata uang';

  @override
  String get totalLoanAmount => 'Total pinjaman';

  @override
  String get installmentAmount => 'Nilai cicilan';

  @override
  String get numberOfInstallments => 'Jumlah cicilan';

  @override
  String get paidInstallments => 'Cicilan terbayar';

  @override
  String get remainingInstallments => 'Sisa cicilan';

  @override
  String installmentsPaidOf(int paid, int total) {
    return '$paid dari $total terbayar';
  }

  @override
  String get finalPayment => 'Pembayaran terakhir';

  @override
  String get paymentDueDate => 'Tanggal jatuh tempo';

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
  String get repaymentProgress => 'Progres pelunasan';

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
    return 'Pembayaran $amount jatuh tempo hari ini. Satu ketukan dan tetap tepat waktu.';
  }

  @override
  String get remindMorningTitle => 'Selamat pagi ☀️';

  @override
  String get remindMorningBody =>
      'Mulai hari dengan menguasai keuangan Anda. Ada yang perlu ditambahkan dari kemarin?';

  @override
  String get remindNoonTitle => 'Cek tengah hari';

  @override
  String get remindNoonBody =>
      'Makan siang, kopi, ongkos? Catat dalam beberapa detik.';

  @override
  String get remindAfternoonTitle => 'Menyusul sebentar';

  @override
  String get remindAfternoonBody =>
      'Catat pengeluaran sejauh ini agar angka hari ini tetap akurat.';

  @override
  String get remindEveningTitle => 'Menutup hari';

  @override
  String get remindEveningBody =>
      'Dua menit sekarang dan angka hari ini lengkap.';

  @override
  String get happyWeekendTitle => 'Selamat akhir pekan! 🎉';

  @override
  String get happyWeekendBody =>
      'Nikmati — dan tetap awasi pengeluaran akhir pekan.';

  @override
  String get dailyReminders => 'Pengingat pengeluaran harian';

  @override
  String get dailyRemindersBody =>
      'Dorongan lembut agar pengeluaran selalu tercatat';

  @override
  String get weekendGreeting => 'Sapaan akhir pekan';

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
      'Dibuat oleh RainyPenny dari catatan Anda sendiri.';

  @override
  String pageOf(int page, int total) {
    return 'Halaman $page dari $total';
  }

  @override
  String get overview => 'Ikhtisar';

  @override
  String get description => 'Keterangan';

  @override
  String get totalIncome => 'Total pemasukan';

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
  String get paidOffShort => 'Lunas';

  @override
  String get transactions => 'Transaksi';

  @override
  String andMoreTransactions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dan $count transaksi lainnya',
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
      'Tambahkan kategori Anda sendiri agar pemasukan dan pengeluaran tersusun persis seperti cara Anda memikirkannya.';

  @override
  String get expenseCategories => 'Kategori pengeluaran';

  @override
  String get incomeCategories => 'Kategori pemasukan';

  @override
  String get newCategory => 'Kategori baru';

  @override
  String get editCategory => 'Ubah kategori';

  @override
  String get categoryName => 'Nama';

  @override
  String get categoryNameHint => 'mis. hewan peliharaan';

  @override
  String get icon => 'Ikon';

  @override
  String get categorySaved => 'Kategori tersimpan';

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
      other: '$count catatan masih memakai kategori ini',
    );
    return '$_temp0';
  }

  @override
  String get noCategoriesYet => 'Belum ada apa-apa di sini.';

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
  String get next => 'Lanjut';

  @override
  String get back => 'Kembali';

  @override
  String get skip => 'Lewati';

  @override
  String get continueLabel => 'Lanjutkan';

  @override
  String get selected => 'Terpilih';

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
  String get backToSignIn => 'Kembali ke halaman masuk';

  @override
  String get alreadyHaveAccount => 'Saya sudah punya akun';

  @override
  String get getStarted => 'Mulai';

  @override
  String get acceptTerms =>
      'Saya menyetujui Syarat Layanan dan Kebijakan Privasi';

  @override
  String get acceptTermsRequired => 'Setujui dulu untuk melanjutkan';

  @override
  String get passwordStrengthTooShort => 'Terlalu pendek';

  @override
  String get passwordStrengthWeak => 'Lemah';

  @override
  String get passwordStrengthFair => 'Cukup';

  @override
  String get passwordStrengthGood => 'Bagus';

  @override
  String get passwordStrengthStrong => 'Kuat';

  @override
  String get passwordAdvice =>
      'Kalimat panjang yang Anda ingat lebih baik daripada kata pendek penuh simbol. Hindari yang sudah Anda pakai di tempat lain.';

  @override
  String get authInvalidCredentials =>
      'Email dan kata sandi itu tidak cocok dengan akun mana pun';

  @override
  String get authEmailNotConfirmed =>
      'Konfirmasi alamat email Anda sebelum masuk';

  @override
  String get authEmailAlreadyRegistered => 'Akun dengan email ini sudah ada';

  @override
  String get authWeakPassword => 'Pilih kata sandi yang lebih panjang';

  @override
  String get authRateLimited =>
      'Terlalu banyak percobaan. Coba lagi beberapa menit lagi';

  @override
  String get authNetworkError =>
      'Tidak ada koneksi. Periksa jaringan lalu coba lagi';

  @override
  String get authGenericError => 'Terjadi kesalahan. Silakan coba lagi';

  @override
  String get confirmEmailTitle => 'Periksa email Anda';

  @override
  String confirmEmailBody(String email) {
    return 'Kami mengirim tautan konfirmasi ke $email. Buka tautan itu untuk menyelesaikan akun Anda.';
  }

  @override
  String get resendConfirmation => 'Kirim ulang email konfirmasi';

  @override
  String get confirmationResent => 'Email konfirmasi terkirim';

  @override
  String get forgotPasswordTitle => 'Atur ulang kata sandi';

  @override
  String get forgotPasswordSubtitle =>
      'Masukkan email yang Anda pakai saat mendaftar dan kami kirimkan tautan untuk memilih kata sandi baru.';

  @override
  String get sendResetLink => 'Kirim tautan';

  @override
  String get resetLinkSentTitle => 'Tautan terkirim';

  @override
  String resetLinkSentBody(String email) {
    return 'Jika $email punya akun, tautannya sedang dalam perjalanan.';
  }

  @override
  String get resetLinkSentHint =>
      'Tautan kedaluwarsa dalam satu jam. Jika belum sampai, periksa folder spam sebelum meminta yang baru.';

  @override
  String get tryAnotherEmail => 'Pakai email lain';

  @override
  String get resetPasswordTitle => 'Pilih kata sandi baru';

  @override
  String get resetPasswordSubtitle =>
      'Pilih sesuatu yang belum pernah Anda pakai di akun ini.';

  @override
  String get passwordChangedTitle => 'Kata sandi diperbarui';

  @override
  String get passwordChangedBody =>
      'Kata sandi baru Anda tersimpan. Anda sudah masuk dan siap melanjutkan.';

  @override
  String get demoModeHint => 'Versi demo — tanpa akun';

  @override
  String get demoModeFill => 'Isikan';

  @override
  String get welcomeTrackTitle => 'Lihat ke mana uang Anda pergi';

  @override
  String get welcomeTrackBody =>
      'Catat apa yang masuk dan apa yang keluar. RainyPenny mengubahnya jadi gambaran yang benar-benar terbaca.';

  @override
  String get welcomeBudgetTitle => 'Batas yang benar-benar menahan';

  @override
  String get welcomeBudgetBody =>
      'Beri setiap bagian pengeluaran Anda plafon bulanan, dan ketahui sebelum terlampaui, bukan sesudahnya.';

  @override
  String get welcomeGoalsTitle => 'Menabung untuk yang penting';

  @override
  String get welcomeGoalsBody =>
      'Beri nama sebuah target, tetapkan jumlahnya, lalu lihat ia terisi. Dana darurat lebih mudah dibangun kalau terlihat.';

  @override
  String get welcomePrivacyTitle => 'Uang Anda tetap milik Anda';

  @override
  String get welcomePrivacyBody =>
      'Angka-angka Anda hanya milik Anda. Tidak dijual, tidak dibagikan kepada siapa pun.';

  @override
  String stepOf(int step, int total) {
    return 'Langkah $step dari $total';
  }

  @override
  String get onboardingNameTitle => 'Kami panggil Anda apa?';

  @override
  String get onboardingNameBody =>
      'Hanya untuk menyapa Anda, tidak untuk hal lain.';

  @override
  String get onboardingNameHint => 'Nama depan sudah cukup. Bisa diubah nanti.';

  @override
  String get onboardingCurrencyTitle => 'Mata uang apa yang Anda pakai?';

  @override
  String get onboardingCurrencyBody =>
      'Semua nominal di aplikasi ditampilkan dalam mata uang ini. Memilihnya tidak mengonversi apa pun.';

  @override
  String get onboardingCurrencySearch => 'Cari semua mata uang';

  @override
  String get onboardingAppearanceTitle => 'Sesuaikan dengan selera Anda';

  @override
  String get onboardingAppearanceBody =>
      'Pilih tampilan. Semuanya berubah saat Anda menyentuh, dan Anda bisa kembali kapan saja.';

  @override
  String get onboardingNotificationsTitle => 'Tetap terkendali';

  @override
  String get onboardingNotificationsBody =>
      'Dorongan kecil di saat yang tepat itulah yang mengubah ini jadi kebiasaan.';

  @override
  String get onboardingNotifyReminders =>
      'Pengingat lembut untuk mencatat pengeluaran';

  @override
  String get onboardingNotifyBudget => 'Kabar sebelum anggaran habis';

  @override
  String get onboardingNotifySummary =>
      'Ringkasan mingguan ke mana uang Anda pergi';

  @override
  String get onboardingNotifyEnable => 'Aktifkan notifikasi';

  @override
  String get onboardingNotifyDone => 'Pengaturan notifikasi tersimpan';

  @override
  String get onboardingNotifyLater =>
      'Semua ini bisa Anda ubah di Pengaturan, kapan pun.';

  @override
  String get onboardingReadyTitle => 'Semua siap';

  @override
  String onboardingReadyTitleNamed(String name) {
    return 'Semua siap, $name';
  }

  @override
  String get onboardingReadyBody =>
      'Penyiapan selesai. Mau lihat sekilas cara kerjanya?';

  @override
  String get onboardingTakeTour => 'Tunjukkan pada saya';

  @override
  String get onboardingGoToApp => 'Bawa saya ke aplikasi';

  @override
  String get onboardingTourLater =>
      'Belum sekarang? Panduannya tetap di Pengaturan, kapan pun Anda mau.';

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
  String get guideDashboardTitle => 'Beranda Anda';

  @override
  String get guideDashboardBody =>
      'Semua bermula di sini. Kartu di atas adalah sisa yang Anda punya; di bawahnya pemasukan dan pengeluaran periode ini, lalu belanja, anggaran, dan target Anda.';

  @override
  String get guideDashboardTip1 =>
      'Tarik layar ke bawah untuk menyegarkan semuanya sekaligus.';

  @override
  String get guideDashboardTip2 =>
      'Ketuk kartu pemasukan atau pengeluaran untuk langsung ke daftarnya.';

  @override
  String get guideDashboardTip3 =>
      'Cincin dan wawasan diperbarui begitu Anda mencatat sesuatu.';

  @override
  String get guideAddTitle => 'Mencatat uang';

  @override
  String get guideAddBody =>
      'Tombol di tengah bilah adalah awal dari segalanya. Ia membuka menu singkat: pengeluaran, pemasukan, utang, anggaran, atau target tabungan.';

  @override
  String get guideAddTip1 =>
      'Ketuk tombol tengah untuk mencatat uang masuk atau keluar.';

  @override
  String get guideAddTip2 =>
      'Tahan tombolnya untuk langsung ke pengeluaran baru tanpa lewat menu.';

  @override
  String get guideAddTip3 =>
      'Selalu pilih kategori — itulah yang membuat grafik dan anggaran bekerja.';

  @override
  String get guideCategoriesTitle => 'Kategori';

  @override
  String get guideCategoriesBody =>
      'Kategori adalah cara pengeluaran dikelompokkan. Yang bawaan sudah cukup untuk kebanyakan orang, dan Anda bisa mengganti namanya atau menambah sendiri.';

  @override
  String get guideCategoriesTip1 =>
      'Pengaturan, lalu Kelola kategori, untuk mengubah atau menambah.';

  @override
  String get guideCategoriesTip2 =>
      'Apa pun yang tanpa kategori masuk ke «Lainnya», supaya grafiknya tetap jujur.';

  @override
  String get guideBudgetTitle => 'Anggaran';

  @override
  String get guideBudgetBody =>
      'Anggaran adalah plafon bulanan untuk satu kategori. Bilahnya terisi seiring belanja dan berubah warna saat mendekat, jadi Anda tahu sebelum terlampaui.';

  @override
  String get guideBudgetTip1 =>
      'Mulai dari dua atau tiga kategori, bukan semuanya sekaligus.';

  @override
  String get guideBudgetTip2 =>
      'Pasang batas sedikit di atas belanja biasa Anda, lalu perketat.';

  @override
  String get guideBudgetTip3 =>
      'Biarkan peringatan anggaran menyala dan aplikasi akan memberi tahu saat menipis.';

  @override
  String get guideSavingsTitle => 'Target tabungan';

  @override
  String get guideSavingsBody =>
      'Beri nama untuk apa Anda menabung, tetapkan jumlah dan tanggalnya, lalu aplikasi menghitung berapa yang perlu disisihkan tiap bulan.';

  @override
  String get guideSavingsTip1 =>
      'Target yang bernama lebih mudah dijaga daripada niat samar untuk menabung.';

  @override
  String get guideSavingsTip2 =>
      'Beberapa target kecil lebih sering rampung daripada satu target besar.';

  @override
  String get guideLoansTitle => 'Utang dan pinjaman';

  @override
  String get guideLoansBody =>
      'Catat berapa utang Anda, berapa biayanya, dan kapan cicilan berikutnya jatuh tempo. Semua yang sedang Anda lunasi ada dalam satu daftar beserta sisanya.';

  @override
  String get guideLoansTip1 =>
      'Isi tanggal jatuh tempo dan pengingat pembayaran akan mengejarnya untuk Anda.';

  @override
  String get guideLoansTip2 =>
      'Utang yang telat tampil merah di beranda sampai dibayar.';

  @override
  String get guideReportsTitle => 'Laporan';

  @override
  String get guideReportsBody =>
      'Pandangan yang lebih dalam: pemasukan lawan pengeluaran, belanja per kategori, seberapa kuat anggaran Anda bertahan, dan berapa bagian pemasukan yang tersisa.';

  @override
  String get guideReportsTip1 =>
      'Ganti antara minggu, bulan, dan kuartal di bagian atas layar.';

  @override
  String get guideReportsTip2 =>
      'Ekspor atau bagikan PDF — hasilnya mengikuti bahasa dan arah baca Anda.';

  @override
  String get guideSettingsTitle => 'Pengaturan';

  @override
  String get guideSettingsBody =>
      'Bahasa, mata uang, warna, dan peringatan semuanya di sini, dan tak satu pun terkunci oleh penyiapan awal — ubah kapan saja.';

  @override
  String get guideSettingsTip1 =>
      'Empat puluh bahasa, dan seluruh tata letak dicerminkan untuk bahasa kanan-ke-kiri.';

  @override
  String get guideSettingsTip2 =>
      'Pilih peringatan yang Anda mau dan jam berapa boleh datang.';

  @override
  String get guideSettingsTip3 => 'Jam tenang menahan semuanya sampai pagi.';

  @override
  String get guideHabitTitle => 'Jadikan kebiasaan';

  @override
  String get guideHabitBody =>
      'Aplikasi ini sebaik apa yang Anda masukkan. Satu menit sehari lebih baik daripada satu jam sebulan, dan setelah dua minggu angkanya mulai bicara.';

  @override
  String get guideHabitTip1 =>
      'Catat pengeluaran saat terjadi, bukan di akhir pekan.';

  @override
  String get guideHabitTip2 =>
      'Lirik beranda sekali sehari. Sepuluh detik sudah cukup.';

  @override
  String get guideHabitTip3 =>
      'Panduan ini tetap di Pengaturan — kembalilah kapan saja.';

  @override
  String get appearance => 'Tampilan';

  @override
  String get themeCaption => 'Terang, gelap, atau mengikuti ponsel Anda.';

  @override
  String get accentColor => 'Warna aksen';

  @override
  String get accentColorCaption => 'Mewarnai tombol, sorotan, dan grafik.';

  @override
  String get accentSemanticsNote =>
      'Uang masuk dan uang keluar mempertahankan warnanya sendiri di setiap tema, jadi sebuah angka tidak pernah berubah makna hanya karena Anda mengganti aksen.';

  @override
  String get accentTeal => 'Tosca';

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
  String get accentOrange => 'Jingga';

  @override
  String get accentSlate => 'Abu batu';

  @override
  String get searchLanguages => 'Cari bahasa';

  @override
  String get suggestedLanguages => 'Disarankan';

  @override
  String get allLanguages => 'Semua bahasa';

  @override
  String get noLanguagesFound => 'Bahasa tidak ditemukan';

  @override
  String get noLanguagesFoundMessage =>
      'Coba namanya dalam bahasa Inggris, atau kode dua huruf.';

  @override
  String get rightToLeft => 'Kanan ke kiri';

  @override
  String get replayGuide => 'Putar ulang panduan';

  @override
  String get replaySetup => 'Ulangi penyiapan';

  @override
  String get replaySetupBody =>
      'Jawab lagi pertanyaan awalnya. Tidak ada catatan Anda yang dihapus.';

  @override
  String get rateTitle => 'Suka dengan RainyPenny?';

  @override
  String get rateBody =>
      'Anda sudah cukup lama menggunakannya. Memberi rating hanya butuh sebentar dan membantu orang lain menemukan aplikasi ini.';

  @override
  String get rateAction => 'Beri rating';

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

  @override
  String get loans => 'Loans';

  @override
  String get debts => 'Debts';

  @override
  String get noLoansTitle => 'No loans';

  @override
  String get noLoansBody => 'You have no active loans.';
}

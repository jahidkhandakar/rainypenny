/// The kinds of alert the app can raise.
///
/// Each maps to a preference toggle and to a delivery channel, so a user who
/// silences payment reminders still gets their weekly summary.
enum NotificationChannel {
  budgetAlerts,
  paymentReminders,
  savingsUpdates,
  weeklySummary,

  /// The gentle prompts through the day to record expenses.
  dailyReminders,

  /// The Friday/Saturday greeting.
  weekendGreeting,
}

/// One of the four points in the day an expense reminder can arrive.
///
/// Separate slots rather than a single "remind me daily" flag so the copy can
/// suit the hour — a nudge that says the same thing four times a day is the
/// fastest way to get notifications switched off.
enum DailyReminderSlot { morning, noon, afternoon, evening }

/// What the user has opted into, plus when the recurring alerts fire.
class NotificationPreferences {
  const NotificationPreferences({
    this.budgetAlerts = true,
    this.paymentReminders = true,
    this.savingsUpdates = true,
    this.weeklySummary = true,
    this.dailyReminders = true,
    this.weekendGreeting = true,
    this.quietHourStart = 22,
    this.quietHourEnd = 8,
    this.summaryWeekday = DateTime.sunday,
    this.summaryHour = 18,
    this.reminderHour = 9,
    this.enabledSlots = const {
      // Two a day by default: enough to build the habit, few enough not to
      // wear out its welcome. The other two are there for users who want them.
      DailyReminderSlot.morning,
      DailyReminderSlot.evening,
    },
    this.weekendWeekday = DateTime.saturday,
    this.weekendHour = 10,
  });

  final bool budgetAlerts;
  final bool paymentReminders;
  final bool savingsUpdates;
  final bool weeklySummary;
  final bool dailyReminders;
  final bool weekendGreeting;

  /// Nothing is delivered between these hours; an alert that lands inside the
  /// window is pushed to [quietHourEnd].
  final int quietHourStart;
  final int quietHourEnd;

  final int summaryWeekday;
  final int summaryHour;

  /// Hour of day that payment and budget reminders fire.
  final int reminderHour;

  /// Which of the four daily slots are switched on. Only consulted when
  /// [dailyReminders] is itself enabled.
  final Set<DailyReminderSlot> enabledSlots;

  /// Which day the weekend greeting lands on. Configurable because the weekend
  /// is not Saturday everywhere the app ships — much of the Gulf starts on
  /// Friday.
  final int weekendWeekday;
  final int weekendHour;

  /// The hour each slot fires at. Fixed rather than user-set: the point is a
  /// rhythm through the day, and four separate time pickers would be a lot of
  /// configuration for very little gain.
  static const slotHours = <DailyReminderSlot, int>{
    DailyReminderSlot.morning: 9,
    DailyReminderSlot.noon: 13,
    DailyReminderSlot.afternoon: 16,
    DailyReminderSlot.evening: 20,
  };

  static int hourFor(DailyReminderSlot slot) => slotHours[slot]!;

  bool isEnabled(NotificationChannel channel) {
    return switch (channel) {
      NotificationChannel.budgetAlerts => budgetAlerts,
      NotificationChannel.paymentReminders => paymentReminders,
      NotificationChannel.savingsUpdates => savingsUpdates,
      NotificationChannel.weeklySummary => weeklySummary,
      NotificationChannel.dailyReminders => dailyReminders,
      NotificationChannel.weekendGreeting => weekendGreeting,
    };
  }

  bool isSlotEnabled(DailyReminderSlot slot) =>
      dailyReminders && enabledSlots.contains(slot);

  /// True when every channel is off — the app then schedules nothing at all.
  bool get allSilenced => !NotificationChannel.values.any(isEnabled);

  NotificationPreferences withChannel(
    NotificationChannel channel,
    bool enabled,
  ) {
    return copyWith(
      budgetAlerts: channel == NotificationChannel.budgetAlerts
          ? enabled
          : null,
      paymentReminders: channel == NotificationChannel.paymentReminders
          ? enabled
          : null,
      savingsUpdates: channel == NotificationChannel.savingsUpdates
          ? enabled
          : null,
      weeklySummary: channel == NotificationChannel.weeklySummary
          ? enabled
          : null,
      dailyReminders: channel == NotificationChannel.dailyReminders
          ? enabled
          : null,
      weekendGreeting: channel == NotificationChannel.weekendGreeting
          ? enabled
          : null,
    );
  }

  NotificationPreferences withSlot(DailyReminderSlot slot, bool enabled) {
    final next = {...enabledSlots};
    if (enabled) {
      next.add(slot);
    } else {
      next.remove(slot);
    }
    return copyWith(enabledSlots: next);
  }

  NotificationPreferences copyWith({
    bool? budgetAlerts,
    bool? paymentReminders,
    bool? savingsUpdates,
    bool? weeklySummary,
    bool? dailyReminders,
    bool? weekendGreeting,
    int? quietHourStart,
    int? quietHourEnd,
    int? summaryWeekday,
    int? summaryHour,
    int? reminderHour,
    Set<DailyReminderSlot>? enabledSlots,
    int? weekendWeekday,
    int? weekendHour,
  }) {
    return NotificationPreferences(
      budgetAlerts: budgetAlerts ?? this.budgetAlerts,
      paymentReminders: paymentReminders ?? this.paymentReminders,
      savingsUpdates: savingsUpdates ?? this.savingsUpdates,
      weeklySummary: weeklySummary ?? this.weeklySummary,
      dailyReminders: dailyReminders ?? this.dailyReminders,
      weekendGreeting: weekendGreeting ?? this.weekendGreeting,
      quietHourStart: quietHourStart ?? this.quietHourStart,
      quietHourEnd: quietHourEnd ?? this.quietHourEnd,
      summaryWeekday: summaryWeekday ?? this.summaryWeekday,
      summaryHour: summaryHour ?? this.summaryHour,
      reminderHour: reminderHour ?? this.reminderHour,
      enabledSlots: enabledSlots ?? this.enabledSlots,
      weekendWeekday: weekendWeekday ?? this.weekendWeekday,
      weekendHour: weekendHour ?? this.weekendHour,
    );
  }
}

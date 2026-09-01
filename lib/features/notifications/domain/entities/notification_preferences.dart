/// The kinds of alert the app can raise.
///
/// Each maps to a preference toggle and to a delivery channel, so a user who
/// silences payment reminders still gets their weekly summary.
enum NotificationChannel {
  budgetAlerts,
  paymentReminders,
  savingsUpdates,
  weeklySummary,
}

/// What the user has opted into, plus when the recurring alerts fire.
class NotificationPreferences {
  const NotificationPreferences({
    this.budgetAlerts = true,
    this.paymentReminders = true,
    this.savingsUpdates = true,
    this.weeklySummary = true,
    this.quietHourStart = 22,
    this.quietHourEnd = 8,
    this.summaryWeekday = DateTime.sunday,
    this.summaryHour = 18,
    this.reminderHour = 9,
  });

  final bool budgetAlerts;
  final bool paymentReminders;
  final bool savingsUpdates;
  final bool weeklySummary;

  /// Nothing is delivered between these hours; an alert that lands inside the
  /// window is pushed to [quietHourEnd].
  final int quietHourStart;
  final int quietHourEnd;

  final int summaryWeekday;
  final int summaryHour;

  /// Hour of day that payment and budget reminders fire.
  final int reminderHour;

  bool isEnabled(NotificationChannel channel) {
    return switch (channel) {
      NotificationChannel.budgetAlerts => budgetAlerts,
      NotificationChannel.paymentReminders => paymentReminders,
      NotificationChannel.savingsUpdates => savingsUpdates,
      NotificationChannel.weeklySummary => weeklySummary,
    };
  }

  /// True when every channel is off — the app then schedules nothing at all.
  bool get allSilenced =>
      !budgetAlerts && !paymentReminders && !savingsUpdates && !weeklySummary;

  NotificationPreferences withChannel(
    NotificationChannel channel,
    bool enabled,
  ) {
    return copyWith(
      budgetAlerts:
          channel == NotificationChannel.budgetAlerts ? enabled : null,
      paymentReminders:
          channel == NotificationChannel.paymentReminders ? enabled : null,
      savingsUpdates:
          channel == NotificationChannel.savingsUpdates ? enabled : null,
      weeklySummary:
          channel == NotificationChannel.weeklySummary ? enabled : null,
    );
  }

  NotificationPreferences copyWith({
    bool? budgetAlerts,
    bool? paymentReminders,
    bool? savingsUpdates,
    bool? weeklySummary,
    int? quietHourStart,
    int? quietHourEnd,
    int? summaryWeekday,
    int? summaryHour,
    int? reminderHour,
  }) {
    return NotificationPreferences(
      budgetAlerts: budgetAlerts ?? this.budgetAlerts,
      paymentReminders: paymentReminders ?? this.paymentReminders,
      savingsUpdates: savingsUpdates ?? this.savingsUpdates,
      weeklySummary: weeklySummary ?? this.weeklySummary,
      quietHourStart: quietHourStart ?? this.quietHourStart,
      quietHourEnd: quietHourEnd ?? this.quietHourEnd,
      summaryWeekday: summaryWeekday ?? this.summaryWeekday,
      summaryHour: summaryHour ?? this.summaryHour,
      reminderHour: reminderHour ?? this.reminderHour,
    );
  }
}

/// The financial period RainyPenny is built around.
///
/// The app is not a rolling-30-day expense tracker; it is a salary assistant.
/// Someone paid on the 25th thinks in terms of "the 25th until the 24th", and
/// every figure in the app — spending, budgets, remaining, carry-forward —
/// has to agree with that, or the numbers stop matching the user's own mental
/// accounting.
///
/// A cycle is derived from one stored setting, the payday, and the date being
/// asked about. Nothing about a cycle is persisted: storing them would let the
/// stored copy drift from the payday the user actually chose.
class SalaryCycle {
  const SalaryCycle({
    required this.start,
    required this.end,
    required this.payday,
  });

  /// The cycle that contains [date], for a user paid on [payday].
  ///
  /// [payday] is a day of the month, 1–31. A payday past the end of a short
  /// month lands on that month's last day, so someone paid on the 31st is paid
  /// on 28 February rather than slipping into March.
  factory SalaryCycle.forDate(DateTime date, int payday) {
    final day = normalisePayday(payday);
    final anchor = DateTime(date.year, date.month, date.day);

    // The cycle starts on this month's payday if that has already arrived,
    // otherwise on last month's.
    final thisMonth = _paydayIn(anchor.year, anchor.month, day);
    final start = !anchor.isBefore(thisMonth)
        ? thisMonth
        : _paydayIn(anchor.year, anchor.month - 1, day);

    return SalaryCycle(start: start, end: _endBefore(_nextAfter(start, day)), payday: day);
  }

  /// The cycle containing today.
  factory SalaryCycle.current(int payday, {DateTime? now}) =>
      SalaryCycle.forDate(now ?? DateTime.now(), payday);

  /// First moment of the cycle: the payday itself, at midnight.
  final DateTime start;

  /// Last moment of the cycle: the day before the next payday, at 23:59:59.
  ///
  /// Inclusive, so a transaction logged late on the final evening still counts
  /// against the cycle it was spent in.
  final DateTime end;

  /// The day of the month this user is paid on, after clamping.
  final int payday;

  /// Payday is a day-of-month, so anything outside 1–31 is a stored value that
  /// has gone wrong rather than a choice worth honouring.
  static int normalisePayday(int payday) => payday.clamp(1, 31);

  /// The payday falling in a given month, clamped to that month's length.
  ///
  /// Month may be 0 or 13: `DateTime` normalises those into the neighbouring
  /// year, which is exactly what stepping backwards from January needs.
  static DateTime _paydayIn(int year, int month, int payday) {
    final lastDay = DateTime(year, month + 1, 0).day;
    return DateTime(year, month, payday > lastDay ? lastDay : payday);
  }

  /// The next payday strictly after [start].
  static DateTime _nextAfter(DateTime start, int payday) =>
      _paydayIn(start.year, start.month + 1, payday);

  /// One second before midnight on the day preceding [nextStart].
  static DateTime _endBefore(DateTime nextStart) =>
      nextStart.subtract(const Duration(seconds: 1));

  SalaryCycle get next => SalaryCycle.forDate(
    _nextAfter(start, payday),
    payday,
  );

  SalaryCycle get previous => SalaryCycle.forDate(
    start.subtract(const Duration(days: 1)),
    payday,
  );

  /// Steps [count] cycles forward, or backward when negative.
  SalaryCycle shifted(int count) {
    var cycle = this;
    for (var i = 0; i < count.abs(); i++) {
      cycle = count > 0 ? cycle.next : cycle.previous;
    }
    return cycle;
  }

  /// Whole days in the cycle. Varies between 28 and 31, which is the point:
  /// a cycle is a real month of someone's life, not a fixed 30-day window.
  int get lengthInDays => end.difference(start).inDays + 1;

  bool contains(DateTime date) => !date.isBefore(start) && !date.isAfter(end);

  bool get isCurrent => contains(DateTime.now());

  /// How far through the cycle [now] is, 0 to 1. Drives the "you are 60% through
  /// the month but have spent 90% of it" kind of observation.
  double progressAt(DateTime now) {
    if (now.isBefore(start)) return 0;
    if (now.isAfter(end)) return 1;
    return (now.difference(start).inSeconds / end.difference(start).inSeconds)
        .clamp(0.0, 1.0);
  }

  /// Days left before the next payday. Zero on the final day.
  int daysRemainingAt(DateTime now) {
    if (now.isAfter(end)) return 0;
    final today = DateTime(now.year, now.month, now.day);
    final last = DateTime(end.year, end.month, end.day);
    return last.difference(today).inDays.clamp(0, lengthInDays);
  }

  /// The month a cycle belongs to for labelling purposes.
  ///
  /// A cycle running 25 Sep – 24 Oct is "September" to the person living it:
  /// it is the money that arrived in September. Labelling it by the month it
  /// ends in would call it October and confuse every user paid late in a month.
  DateTime get labelMonth => DateTime(start.year, start.month);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SalaryCycle &&
          other.start == start &&
          other.end == end &&
          other.payday == payday);

  @override
  int get hashCode => Object.hash(start, end, payday);

  @override
  String toString() => 'SalaryCycle(${start.toIso8601String()} → '
      '${end.toIso8601String()}, payday $payday)';
}

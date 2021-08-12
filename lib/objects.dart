enum CompletionStatus {
  missed,
  none,
  done,
}

enum StreakType { none, weekly, monthly }

class StreakBullet {
  final CompletionStatus state = CompletionStatus.none;
}

class GoalStreak {
  final List<StreakBullet> bullets = [];
}

class Goal {
  Goal({required this.name});

  final String name;
  final CompletionStatus todayStatus = CompletionStatus.none;
  final StreakType streakType = StreakType.none;
}

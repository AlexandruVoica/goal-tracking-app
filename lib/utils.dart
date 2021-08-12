import 'objects.dart';

int getNumberOfDaysByStreakType(StreakType type) {
  switch (type) {
    case StreakType.weekly:
      return 7;
    case StreakType.monthly:
      return 31;
    case StreakType.none:
    default:
      return 0;
  }
}

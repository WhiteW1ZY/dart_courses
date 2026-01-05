import 'dart:math';

import 'package:hw/classes/generators/i_date_time_generator.dart';

class DateTimeGenerator extends IDateTimeGenerator {
  @override
  DateTime generateRandomPastThreeDaysDate() {
    final random = Random();
    final now = DateTime.now();

    final daysAgo = random.nextInt(3);
    return now.subtract(Duration(days: daysAgo));
  }
}

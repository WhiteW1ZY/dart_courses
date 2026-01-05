import 'package:hw/classes/parsers/date_time_parser/i_date_time_parser.dart';

class DateTimeParser extends IDateTimeParser {
  @override
  String toDisplayString(DateTime dateTime) {
    final currentTime = DateTime.now();
    final difference = currentTime.difference(dateTime);

    final (minutesPassed, hoursPassed, daysPassed) = (
      difference.inMinutes,
      difference.inHours,
      difference.inDays,
    );

    final (dateHour, dateMinutes, dateDay, dateMonth, dateYear) = (
      dateTime.hour,
      dateTime.minute,
      dateTime.day,
      dateTime.month,
      dateTime.year,
    );

    final hourWithMinutesString = "$dateHour:$dateMinutes";
    final fullDate = "$dateDay:$dateMonth:$dateYear";

    return switch ((minutesPassed, hoursPassed, daysPassed)) {
      (< 1, _, _) => "Только что",
      (_, < 1, _) => "$minutesPassed мин. назад",
      (_, _, < 1) => "Сегодня, $hourWithMinutesString",
      (_, _, 1) => "Вчера, $hourWithMinutesString",
      (_, _, < 7) => "$daysPassed дн. назад, $hourWithMinutesString",
      _ => fullDate,
    };
  }
}

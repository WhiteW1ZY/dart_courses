void main() { 
  final dayOfWeekNum = 3;
  final dayOfWeekStringConverter = DayOfWeekStringConverter(); 
  final stringDayOfWeek = dayOfWeekStringConverter.getFromInt(dayOfWeekNum);

  print("День недели из числа $dayOfWeekNum - $stringDayOfWeek"); 
}

class DayOfWeekStringConverter {
  String getFromInt(int dayOfWeek) {
    return switch(dayOfWeek) {
      1 => "Понедельник",
      2 => "Вторник",
      3 => "Среда", 
      4 => "Четверг", 
      5 => "Пятница",
      6 => "Суббота",
      7 => "Воскресенье",
      _ => "Не придумали такой день недели"
    };
  }
}
import 'dart:io';

void main() {
  final userInput = UserInput();

  print("Введите число:");

  final valueInput = userInput.getUserInput(); 

  if(num.tryParse(valueInput) == null) {
    throw ArgumentError("Некорректный ввод");
  }

  final numValue = num.parse(valueInput);

  if(numValue > 0) {
    print("Число $numValue - положительное");
  }
  else {
    print("Число $numValue - не положительное");
  }
} 

class UserInput {
  String getUserInput() => stdin.readLineSync() ?? "";
}
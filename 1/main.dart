import 'Classes/CalculationOperation/addition.dart';
import 'Classes/CalculationOperation/division.dart';
import 'Classes/ConsoleLogger/logger.dart';
import 'Classes/UserInput/console_user_input.dart';
import 'Classes/UserInputValidator/console_user_input_validator.dart'; 
import 'Classes/ValidInput/console_user_valid_input.dart';
import 'Classes/max_number_searcher.dart';
import 'Classes/CalculationOperation/multiplication.dart';
import 'Classes/CalculationOperation/substraction.dart';  

void main() { 
  final consoleUserInputValidator = ConsoleUserInputValidator();
  final consoleUserInput = ConsoleUserInput();
  final logger = ConsoleLogger();
  
  final validInput = ConsoleUserValidInput(consoleUserInputValidator, consoleUserInput, logger);

  final a = validInput.getNumber();
  final b = validInput.getNumber(); 

  print("Исходные числа: a = $a и b = $b");
  
  final addition = Addition();
  print("Результат сложения: ${addition.calculate(a,b)}");

  final subtraction = Subtraction();
  print("Результат вычитания: ${subtraction.calculate(a,b)}");

  final multiplication = Multiplication();
  print("Результат умножения: ${multiplication.calculate(a,b)}");

  final division = Division();
  print("Результат деления: ${division.calculate(a,b)}");

  final maxNumberSearcher = MaxNumberSearcher();
  print("Большее из двух чисел: ${maxNumberSearcher.find(a, b)}");
}
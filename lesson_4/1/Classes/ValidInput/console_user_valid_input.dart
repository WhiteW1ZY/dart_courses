import '../Abstract/logger.dart';
import '../Abstract/user_input.dart';
import '../Abstract/user_input_validator.dart';
import '../Abstract/valid_input.dart';

class ConsoleUserValidInput extends ValidInput {
  final UserInputValidator userInputValidator;
  final UserInput userInput;
  final Logger logger;

  ConsoleUserValidInput(this.userInputValidator, this.userInput, this.logger);

  num getNumber() { 
    logger.logMessage("Введите значение числа:");
    var numValue = userInput.getValue();

    while(!userInputValidator.isStringNumberValid(numValue)) {
      logger.logMessage("Некорректный ввод. Повторите попытку:");
      numValue = userInput.getValue();
    }

    return num.parse(numValue);
  }
}
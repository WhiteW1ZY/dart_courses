import '../Abstract/user_input_validator.dart';

class ConsoleUserInputValidator extends UserInputValidator {
  @override
  bool isStringNumberValid(String number) => num.tryParse(number) != null;
}
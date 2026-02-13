import 'package:formz/formz.dart';

enum PasswordValidationError { invalidLength }

class PasswordValidator extends FormzInput<String, PasswordValidationError> {
  const PasswordValidator.pure() : super.pure('');
  const PasswordValidator.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.length < 6) {
      return PasswordValidationError.invalidLength;
    }
    return null;
  }
}

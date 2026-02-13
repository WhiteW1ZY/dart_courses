import 'package:formz/formz.dart';

enum EmailValidationError { invalidLength, invalidFormat }

class EmailValidator extends FormzInput<String, EmailValidationError> {
  const EmailValidator.pure() : super.pure('');
  const EmailValidator.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String value) {
    if (value.length < 6) {
      return EmailValidationError.invalidLength;
    } else if (!value.contains("@")) {
      return EmailValidationError.invalidFormat;
    }
    return null;
  }
}

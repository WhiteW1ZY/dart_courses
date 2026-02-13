import 'package:formz/formz.dart';

enum TodoNodeValidationError { empty }

class TodoNodeValidator extends FormzInput<String, TodoNodeValidationError> {
  const TodoNodeValidator.pure() : super.pure('');
  const TodoNodeValidator.dirty([super.value = '']) : super.dirty();

  @override
  TodoNodeValidationError? validator(String value) =>
      value.isEmpty ? TodoNodeValidationError.empty : null;
}

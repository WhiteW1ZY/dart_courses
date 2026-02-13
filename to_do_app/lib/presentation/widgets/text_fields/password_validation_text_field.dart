import 'package:flutter/material.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/domain/forms/password_validator.dart';
import 'package:to_do_app/presentation/widgets/text_fields/custom_text_field.dart';

class PasswordValidationTextField extends StatelessWidget {
  final Function(String value) onChanged;
  final PasswordValidationError? passwordValidationError;
  final Function()? suffixIconAction;
  final bool readOnly;
  final bool isObcureText;

  const PasswordValidationTextField({
    required this.onChanged,
    required this.passwordValidationError,
    this.suffixIconAction,
    this.readOnly = false,
    required this.isObcureText,
    super.key,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
    onChanged: onChanged,
    errorText: switch (passwordValidationError) {
      .invalidLength => Text(context.glossary.invalid_length),
      _ => null,
    },
    suffixIcon: suffixIconAction == null
        ? null
        : IconButton(
            onPressed: suffixIconAction,
            icon: Icon(isObcureText ? Icons.visibility_off : Icons.visibility),
          ),
    prefixIcon: const Icon(Icons.lock_outline),
    labelText: context.glossary.password,
    readOnly: readOnly,
    isObcureText: isObcureText,
  );
}

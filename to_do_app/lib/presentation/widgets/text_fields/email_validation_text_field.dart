import 'package:flutter/material.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/domain/forms/email_validator.dart';
import 'package:to_do_app/presentation/widgets/text_fields/custom_text_field.dart';

class EmailValidationTextField extends StatelessWidget {
  final Function(String value) onChanged;
  final EmailValidationError? emailValidationError;
  final bool readOnly;

  const EmailValidationTextField({
    required this.onChanged,
    required this.emailValidationError,
    this.readOnly = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onChanged: onChanged,
      errorText: switch (emailValidationError) {
        .invalidFormat => Text(context.glossary.invalid_format),
        .invalidLength => Text(context.glossary.invalid_length),
        _ => null,
      },
      labelText: context.glossary.login,
      prefixIcon: const Icon(Icons.person),
      readOnly: readOnly,
    );
  }
}

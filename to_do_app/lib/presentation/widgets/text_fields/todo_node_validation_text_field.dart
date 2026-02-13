import 'package:flutter/material.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/domain/forms/todo_node_validator.dart';
import 'package:to_do_app/presentation/enums/todo_field_type.dart';
import 'package:to_do_app/presentation/widgets/text_fields/custom_text_field.dart';

class TodoNodeValidationTextField extends StatelessWidget {
  final Function(String value) onChanged;
  final TodoNodeValidationError? todoNodeValidationError;
  final bool readOnly;
  final TodoFieldType fieldType;
  final String? initialValue;

  const TodoNodeValidationTextField({
    required this.onChanged,
    required this.todoNodeValidationError,
    this.readOnly = false,
    required this.fieldType,
    this.initialValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onChanged: onChanged,
      errorText: todoNodeValidationError == .empty
          ? Text(context.glossary.cannot_be_empty)
          : null,
      labelText: fieldType == TodoFieldType.title
          ? context.glossary.title
          : context.glossary.description,
      prefixIcon: Icon(
        fieldType == TodoFieldType.title
            ? Icons.text_fields_outlined
            : Icons.description,
      ),
      readOnly: readOnly,
      initialValue: initialValue,
    );
  }
}

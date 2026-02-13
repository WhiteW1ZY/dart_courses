import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String value) onChanged;
  final Widget? errorText;
  final Widget? suffixIcon;
  final Icon? prefixIcon;
  final String? labelText;
  final String? initialValue;
  final bool readOnly;
  final bool isObcureText;

  const CustomTextField({
    required this.onChanged,
    required this.errorText,
    this.suffixIcon,
    this.prefixIcon,
    this.labelText,
    this.initialValue,
    required this.readOnly,
    this.isObcureText = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: isObcureText,
      readOnly: readOnly,
      initialValue: initialValue,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(),
        error: errorText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}

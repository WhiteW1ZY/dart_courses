import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String fieldText;
  const TextDivider({super.key, required this.fieldText});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: Text(fieldText, style: const TextStyle(color: Colors.grey)),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}

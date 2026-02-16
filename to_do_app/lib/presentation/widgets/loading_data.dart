import 'package:flutter/material.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';

class LoadingData extends StatelessWidget {
  const LoadingData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        const CircularProgressIndicator(),
        const SizedBox(height: 10),
        Text(context.glossary.loading, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}

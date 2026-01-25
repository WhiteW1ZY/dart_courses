import 'package:flutter/material.dart';

class LockedBox extends StatelessWidget {
  const LockedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withAlpha(70),
        borderRadius: const .all(.circular(100)),
      ),
      child: const Icon(Icons.lock, color: Colors.blue, size: 60),
    );
  }
}

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Padding(
      padding: .only(top: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: .w500),
      ),
    ),
  );
}

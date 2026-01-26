import 'package:flutter/material.dart';
import 'package:lesson_12/screens/main_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MainScreen());
  }
}

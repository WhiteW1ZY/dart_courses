import 'package:flutter/material.dart';
import 'package:task_2/screens/animated_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const AnimatedPage());
  }
}

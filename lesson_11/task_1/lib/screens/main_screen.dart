import 'package:flutter/material.dart';
import 'package:task_1/screens/about_application_screen.dart';
import 'package:task_1/screens/contacts_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutApplicationScreen(),
                  ),
                );
              },
              child: const Text("О приложении"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ContactsScreen(),
                  ),
                );
              },
              child: const Text("Контакты"),
            ),
          ],
        ),
      ),
    );
  }
}

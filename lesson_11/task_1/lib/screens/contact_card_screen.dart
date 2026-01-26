import 'package:flutter/material.dart';
import 'package:task_1/entities/contact.dart';

class ContactCardScreen extends StatelessWidget {
  final Contact contact;
  const ContactCardScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              contact.name,
              style: const TextStyle(fontWeight: .bold, fontSize: 25),
            ),
            const SizedBox(height: 5),
            Text(contact.description),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Назад"),
            ),
          ],
        ),
      ),
    );
  }
}

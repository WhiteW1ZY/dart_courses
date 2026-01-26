import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_2/entities/contact.dart';
import 'package:task_2/router/auto_router_config.gr.dart';

@RoutePage()
class ContactScreen extends StatelessWidget {
  final Contact contact;
  const ContactScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              "${contact.name} ${contact.surname}",
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.router.navigate(const MainRoute());
              },
              child: const Text("Назад"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_2/entities/contact.dart';
import 'package:task_2/router/auto_router_config.gr.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  static const _contactList = [
    Contact(name: "Оптимус", surname: "Прайс"),
    Contact(name: "Тайлер", surname: "Дерден"),
    Contact(name: "Анна", surname: "Каренина"),
    Contact(name: "Брюс", surname: "Уэйн"),
    Contact(name: "Глеб", surname: "Фараон"),
    Contact(name: "Монте", surname: "Кристо"),
  ];

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text("Главная страница", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              width: 200,
              child: ListView.builder(
                itemCount: _contactList.length,
                itemBuilder: (context, index) {
                  final contact = _contactList[index];
                  return Padding(
                    padding: .symmetric(horizontal: 15, vertical: 8),
                    child: ElevatedButton(
                      onPressed: () {
                        context.router.navigate(ContactRoute(contact: contact));
                      },
                      child: Text("${contact.name} ${contact.surname}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_1/entities/contact.dart';
import 'package:task_1/screens/contact_card_screen.dart';

class ContactsScreen extends StatelessWidget {
  static const List<Contact> _contactList = [
    Contact(
      name: "Билли Бонс",
      description:
          "Обладатель карты острова сокровищ, из-за которой всё и началось. Много пьёт и всегда простужен.",
    ),
    Contact(
      name: "Чёрный пес",
      description: "Друг Флинта. Охотится за картой Острова Сокровищ.",
    ),
    Contact(
      name: "Доктор Ливси",
      description: "Очень хороший и весёлый человек.",
    ),
    Contact(
      name: "Слепой Пью",
      description: "Старый пират. Друг Флинта. Жаден, ради денег готов на всё.",
    ),
    Contact(
      name: "Джимми Гокинс",
      description:
          "Очень, очень хороший и вежливый мальчик. Скромен, добр, правдив. Слушает маму и каждое утро делает зарядку.",
    ),
    Contact(
      name: "Сквайр Трелони",
      description: "Туп, жаден, прожорлив, наднемен, трусоват, ленив.",
    ),
    Contact(
      name: "Джон Сильвер",
      description:
          "Самый страшный пират, но притворяется добрым что, впрочем, ему удаётся.",
    ),
  ];
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            SizedBox(
              height: 170,
              width: 200,
              child: ListView.builder(
                itemCount: _contactList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: .symmetric(vertical: 5, horizontal: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                ContactCardScreen(contact: _contactList[index]),
                          ),
                        );
                      },
                      child: Text(_contactList[index].name),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

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

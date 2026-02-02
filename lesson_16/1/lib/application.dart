import 'package:flutter/material.dart';
import 'package:hw/models/note_model.dart';
import 'package:hw/pages/home_page.dart';
import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NoteModel(),
      child: MaterialApp(home: const HomePage()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hw/models/note_model.dart';
import 'package:provider/provider.dart';

class CreateNotePage extends StatefulWidget {
  final VoidCallback afterCreateAction;
  const CreateNotePage({super.key, required this.afterCreateAction});

  @override
  State<StatefulWidget> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _categoryController = TextEditingController();

  void _createNode() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final title = _titleController.text;
    final category = _categoryController.text;
    context.read<NoteModel>().addNote(title, category);

    _titleController.clear();
    _categoryController.clear();
    widget.afterCreateAction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .stretch,
              children: [
                const Text(
                  "Создание заметки",
                  style: TextStyle(fontWeight: .w500, fontSize: 32),
                  textAlign: .center,
                ),

                const SizedBox(height: 20),
                TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: "Название",
                    prefixIcon: const Icon(Icons.title),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if ((value == null) || (value.isEmpty)) {
                      return "Значение не должно быть пустым";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _categoryController,
                  decoration: InputDecoration(
                    labelText: "Категория",
                    prefixIcon: const Icon(Icons.category),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if ((value == null) || (value.isEmpty)) {
                      return "Значение не должно быть пустым";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                OutlinedButton(
                  onPressed: _createNode,
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: .circular(8)),
                  ),
                  child: const Text(
                    "Создать",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

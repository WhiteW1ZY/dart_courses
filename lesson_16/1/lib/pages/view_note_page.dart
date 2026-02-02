import 'package:flutter/material.dart';
import 'package:hw/models/note_model.dart';
import 'package:provider/provider.dart';

class ViewNotePage extends StatelessWidget {
  final VoidCallback showCreateNote;
  const ViewNotePage({super.key, required this.showCreateNote});

  void _removeNode(BuildContext context, index) {
    context.read<NoteModel>().removeNote(index);
  }

  @override
  Widget build(BuildContext context) {
    final notes = context.watch<NoteModel>().notes;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .all(20),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .stretch,
            children: [
              const Text(
                "Просмотр заметок",
                style: TextStyle(fontWeight: .w500, fontSize: 32),
                textAlign: .center,
              ),
              const SizedBox(height: 20),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  border: .all(),
                  borderRadius: .all(.circular(8)),
                ),
                child: ListView.builder(
                  itemCount: notes.length,
                  itemBuilder: (context, index) {
                    final note = notes[index];
                    return ListTile(
                      title: Text(note.title),
                      subtitle: Text(note.category),
                      trailing: IconButton(
                        onPressed: () {
                          _removeNode(context, index);
                        },
                        icon: const Icon(Icons.clear_sharp),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: showCreateNote,
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: .circular(8)),
                ),
                child: const Text(
                  "Добавить заметку",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

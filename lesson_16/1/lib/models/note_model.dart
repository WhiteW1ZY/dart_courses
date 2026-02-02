
import 'package:flutter/material.dart';
import 'package:hw/classes/note.dart';

class NoteModel with ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(String title, String category) {
    _notes.add(Note(title: title, category: category));
    notifyListeners();
  }

  void removeNote(int index) {
    _notes.removeAt(index);
    notifyListeners();
  }
}
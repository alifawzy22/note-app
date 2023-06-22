import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

import 'custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key, required this.listNotes});
  final List<NoteModel> listNotes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          itemCount: listNotes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: CustomNoteItem(
                note: listNotes[index],
              ),
            );
          }),
    );
  }
}

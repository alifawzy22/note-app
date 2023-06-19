import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';

import 'custom_column_note_item.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 16, left: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 211, 148, 14),
        ),
        child: const CustomColumnNoteItem(),
      ),
    );
  }
}

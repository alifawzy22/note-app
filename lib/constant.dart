import 'package:flutter/material.dart';

Color kPrimaryColor = const Color.fromARGB(255, 0, 247, 255);

String kNoteBox = 'Note_Box';

void showSnackBar(BuildContext context, String text, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(
        text,
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:note_app/views/note_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const NoteView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/bloc_observer.dart';
import 'package:note_app/views/note_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'constant.dart';
import 'models/note_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);

  Bloc.observer = SimpleBlocObserver();
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

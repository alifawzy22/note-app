import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInit());
  List<NoteModel> notes = [];
  void getAllNotes() {
    Box<NoteModel> box = Hive.box<NoteModel>(kNoteBox);
    notes = box.values.toList();
    emit(NotesSuccess());
  }
}

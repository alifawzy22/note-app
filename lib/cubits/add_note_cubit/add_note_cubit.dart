import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInit());
  Future<void> addNote(NoteModel note) async {
    Box<NoteModel> notesBox = Hive.box<NoteModel>(kNoteBox);
    await notesBox.add(note);
    emit(AddNoteSuccess());
  }
}

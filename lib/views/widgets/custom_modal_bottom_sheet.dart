import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import '../../constant.dart';
import 'add_note_form.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).getAllNotes();
            Navigator.of(context).pop();
            showSnackBar(context, 'Add Note Successfully', Colors.green);
          }
        },
        builder: (context, state) {
          return const SingleChildScrollView(
            child: AddNoteForm(),
          );
        },
      ),
    );
  }
}

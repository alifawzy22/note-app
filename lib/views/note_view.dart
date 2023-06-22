import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_state.dart';

import 'package:note_app/views/widgets/custom_modal_bottom_sheet.dart';
import 'package:note_app/views/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const CustomModalBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          return NoteViewBody(
            notes: BlocProvider.of<NotesCubit>(context).notes,
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

class CustomColumnNoteItem extends StatelessWidget {
  const CustomColumnNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              note.title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              note.subTitle,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              note.delete();
              BlocProvider.of<NotesCubit>(context).getAllNotes();
            },
            icon: const Icon(
              FontAwesomeIcons.trash,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Text(
            note.date,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}

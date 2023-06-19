import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_listview_note.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
      child: Column(
        children: const [
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}

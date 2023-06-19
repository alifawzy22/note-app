import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomColumnNoteItem extends StatelessWidget {
  const CustomColumnNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              'Flutter Tips',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Build your career with tharwat samy',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
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
            'May 21,2022',
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

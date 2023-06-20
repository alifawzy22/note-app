import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final void Function(String?)? onSave;
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hint,
      ),
      maxLines: maxLines,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'this field is required';
        } else {
          return null;
        }
      },
      onSaved: onSave,
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? kPrimaryColor,
      ),
    );
  }
}

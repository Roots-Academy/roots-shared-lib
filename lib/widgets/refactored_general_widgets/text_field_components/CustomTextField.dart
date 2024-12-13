// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function(String value) onChanged;
  bool obscureText;
  Function(dynamic val)? onSubmitted;
  bool? canEdit = true;
  TextEditingController? textController;

  CustomTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
    required this.obscureText,
    this.onSubmitted,
    this.canEdit,
    this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return textController == null
        ? TextField(
            enabled: canEdit,
            obscureText: obscureText,
            decoration: InputDecoration(
                enabledBorder: textFieldBorderStyle(),
                fillColor: Colors.white,
                filled: true,
                hintStyle: const TextStyle(fontSize: 14, color: Colors.black38),
                hintText: hintText,
                border: textFieldBorderStyle()),
            onChanged: (value) => onChanged(value),
            onSubmitted: (value) {
              if (onSubmitted != null) {
                onSubmitted!(value);
              } else {
                () {};
              }
            },
          )
        : TextField(
            controller: textController,
            enabled: canEdit,
            obscureText: obscureText,
            decoration: InputDecoration(
                enabledBorder: textFieldBorderStyle(),
                fillColor: Colors.white,
                filled: true,
                hintStyle: const TextStyle(fontSize: 14, color: Colors.black38),
                hintText: hintText,
                border: textFieldBorderStyle()),
            onChanged: (value) => onChanged(value),
            onSubmitted: (value) {
              if (onSubmitted != null) {
                onSubmitted!(value);
              } else {
                () {};
              }
            },
          );
  }
}

OutlineInputBorder textFieldBorderStyle() => const OutlineInputBorder(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
    borderSide: BorderSide(color: Colors.black12));

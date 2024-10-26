// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../app_constants/app_colors.dart';
import 'CustomTextField.dart';
import 'TextFieldIcon.dart';


/// The text box designed by @Riaz
class RootsTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final Function(String value) onChanged;
  bool obscureText;
  Function(dynamic val)? onSubmitted;
  Color? color;
  bool? canEdit = true;
  TextEditingController? textController;
  RootsTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.onChanged,
    this.obscureText = false,
    this.onSubmitted,
    this.color,
    this.canEdit = true,
    this.textController,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextFieldIcon(icon: icon, color: color),
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 2),
                          blurRadius: 1,
                          spreadRadius: 2,
                          color: AppColors.shadowColour)
                    ]),
                height: 48,
                child: CustomTextField(
                  textController: textController,
                  hintText: hintText,
                  onChanged: onChanged,
                  obscureText: obscureText,
                  onSubmitted: onSubmitted,
                  canEdit: canEdit,
                ))),
      ],
    );
  }
}

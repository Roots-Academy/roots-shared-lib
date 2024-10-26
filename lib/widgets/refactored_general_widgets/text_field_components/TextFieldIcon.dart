// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';



import '../../../app_constants/app_colors.dart';

class TextFieldIcon extends StatelessWidget {
  final IconData icon;
  Color? color;
  TextFieldIcon({
    super.key,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          color: (color == null) ? AppColors.tealColour : color),
      child: Center(
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}

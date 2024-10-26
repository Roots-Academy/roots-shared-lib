import 'package:flutter/material.dart';

import '../../app_constants/app_colors.dart';
import '../../theme/app_text_styles.dart';

class TextInputFieldWidget extends StatefulWidget {
  double height;
  double width;
  TextEditingController controller;
  String hintText;
  int? maxLines = 1;

  TextInputFieldWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.controller,
      required this.hintText,
      this.maxLines});

  @override
  State<TextInputFieldWidget> createState() => _TextInputFieldWidgetState();
}

class _TextInputFieldWidgetState extends State<TextInputFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: widget.height,
        width: widget.width,
        child: TextFormField(
            controller: widget.controller,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
                fillColor: AppColors.textInputBgColour,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(9.5)),
                hintText: widget.hintText,
                hintStyle: AppTextStyles.bodySmall16
                    .copyWith(color: AppColors.disabledTextColor))));
  }
}

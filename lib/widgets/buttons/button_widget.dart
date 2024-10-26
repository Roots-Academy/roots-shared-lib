import 'package:flutter/material.dart';

import '../../app_constants/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final Function onPressed;
  final Widget? child;
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? width;
  final double? height;
  final bool enabled;
  const ButtonWidget(
      {super.key,
        required this.onPressed,
        this.child,
        this.backgroundColor,
        this.foregroundColor,
        this.width,
        this.height,
        this.text = 'Button',
        this.borderRadius,
        this.horizontalPadding,
        this.verticalPadding,
        this.fontSize,
        this.fontWeight,
        this.enabled = true,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? MediaQuery.of(context).size.width - 40,
      child: ElevatedButton(

        onPressed: () {
          if(enabled) {
            onPressed();
          }
        },
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.grey,
          disabledMouseCursor: SystemMouseCursors.basic,
          enabledMouseCursor: enabled ? SystemMouseCursors.click : SystemMouseCursors.basic,

          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
          ),
          foregroundColor: foregroundColor ?? AppColors.white,
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 16,
              vertical: verticalPadding ?? 10),
          child: child ??
              Text(
                text ?? ' ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: fontSize ?? (text!.length > 15 ? 17 : 20),
                  fontWeight: fontWeight ?? FontWeight.w500,
                ),
              ),
        ),
      ),
    );
  }
}
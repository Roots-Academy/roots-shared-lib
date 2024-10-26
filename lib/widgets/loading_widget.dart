import 'package:flutter/material.dart';

import '../app_constants/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  final double? widthOrHeight;  //because it returns a circle, so height should = width
  final Color? color;
  const LoadingWidget({super.key, this.widthOrHeight, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthOrHeight?? 100,
      height: widthOrHeight ?? 100,
      child: Center(
        child: CircularProgressIndicator(
          color: color ?? AppColors.tealColour,
        ),
      ),
    );
  }
}

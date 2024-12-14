import 'package:flutter/material.dart';

import '../app_constants/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../utility-functions/image_utility_functions.dart';






class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, this.message});
  final String? message;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 75,
              child: Image(image: ImageUtils.getImage("assets/images/RootsIcons/Icons_PUZZLE (1).png"))),
          const SizedBox(height: 15),
          Text("Uh oh!", style: AppTextStyles.bigText.copyWith(color: AppColors.darkBlue, fontWeight: FontWeight.bold)),
          Text(message ?? "Looks like something went wrong"),
          // const SizedBox(height: 32),
        ],
      ),
    );
  }
}

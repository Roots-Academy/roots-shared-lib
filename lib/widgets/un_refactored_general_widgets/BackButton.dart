import 'package:flutter/material.dart';

import '../../app_constants/app_colors.dart';


///Creates a back button in the Roots style. Takes the [BuildContext] of the page
///that it is implemented in as an input
class BackButton extends StatelessWidget {
  BackButton(this.context, {this.overrideFunction, super.key});

  BuildContext context;
  Function? overrideFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (overrideFunction != null) {
          overrideFunction!();
          return;
        }
        Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.tealColour,
        ),
        height: 40,
        width: 40,
        child: const Center(
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
    );
  }
}

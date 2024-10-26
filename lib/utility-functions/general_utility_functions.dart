import 'package:flutter/material.dart';

class GeneralUtilityFunctions {
  static popScreensUntilParentNode({
    required BuildContext context,
  }) {
    Navigator.popUntil(context, (route) {
      if (route.isFirst && route.isCurrent) {
        //true means keep route

        return true;
      } else {
        //false means pop route
        return false;
      }
    });
    //}
  }
}
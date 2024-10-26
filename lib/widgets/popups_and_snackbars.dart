import 'package:flutter/material.dart';

class PopupsAndSnackbarsUtils {
  static pushSnack(String message, BuildContext context) {
    String displayMessage = message;
    List<String> x = displayMessage.split(']');
    if (x.length > 1) {
      displayMessage = (x[1]).trim();
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //elevation: ,
      //behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      content: Text(displayMessage),
    ));
  }
}

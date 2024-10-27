

import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  LoginButton(this.function, {super.key, required this.child, required this.height, this.width, required this.colour,});

  final Function function;
  final dynamic child;
  final double height;
  double? width = double.infinity;
  final Color colour;

  getChild(){
    if (child is String){
      return Text(child, style: const TextStyle(color: Colors.white));
    }
    return child;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          function();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colour,
          ),
          height: height ?? 43,
          width: double.infinity,
          child: Center(child: getChild()),
        ),
      ),
    );
  }
}

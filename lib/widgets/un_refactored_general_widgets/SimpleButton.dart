import 'package:flutter/material.dart';

import '../../app_constants/app_colors.dart';


///Custom Roots button. Useful for menus
class SimpleButton extends StatelessWidget {
  const SimpleButton(
      this.function, this.child, this.height, this.width, this.colour,
      {super.key});

  final Function function;
  final dynamic child;
  final double height;
  final double width;
  final Color colour;

  getChild() {
    if (child is String) {
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
            borderRadius: BorderRadius.circular(40),
            color: colour,
          ),
          height: height,
          width: width,
          child: Center(child: getChild()),
        ),
      ),
    );
  }
}

class SquareButton extends StatelessWidget {
  SquareButton(this.function, this.child, this.height, this.width, this.colour,
      {super.key}) {
    if (height <= 30) {
      borderRadius = 6;
      textSize = 12;
    }
  }

  final Function function;
  final dynamic child;
  final double height;
  final double width;
  final Color colour;

  double? borderRadius;
  double? textSize;

  getChild() {
    if (child is String) {
      return Text(child,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: (colour != Colors.white)
                  ? Colors.white
                  : AppColors.primaryColor,
              fontSize: textSize,
              fontWeight: FontWeight.bold));
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
            borderRadius: BorderRadius.circular(
                (borderRadius == null) ? 10 : borderRadius!),
            color: colour,
          ),
          height: height,
          width: (width != 0) ? width : null,
          child: Center(child: getChild()),
        ),
      ),
    );
  }
}

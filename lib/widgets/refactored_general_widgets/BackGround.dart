import 'package:flutter/material.dart';


///Used in conjunction with a [Stack] widget. This returns the patterned
///Background
class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Opacity(
      opacity: .4,
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: width,
        height: height,
        decoration: const BoxDecoration(),
        child: Image.asset(
          'assets/vectorOriginal.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double? height;
  final double? width;
  final Function? onTap;

  const AppLogo({super.key, this.height, this.width, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: SizedBox(
        height: height ?? 95,
        width: width ?? 180,
        child: Image.asset(
          "assets/RootsLogoWhite.png",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

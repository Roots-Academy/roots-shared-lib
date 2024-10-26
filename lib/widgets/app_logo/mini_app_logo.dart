import 'package:flutter/material.dart';

class MiniAppLogo extends StatelessWidget {
  final double? height;
  final double? width;
  final Function? onTap;

  const MiniAppLogo({super.key, this.height, this.width, this.onTap});

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
              height: 40, child: Image.asset("assets/RootsMiniLogoWhite.png")),
        ),
      );
    }
  }


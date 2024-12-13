// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SideLayoutPattern extends StatelessWidget {
  const SideLayoutPattern({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Positioned(
      left: width - ((height * .65) / 2),
      top: -(height * 0.1),
      child: SizedBox(
          height: height * 0.65,
          child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(),
              child: Image.asset("assets/bgPattern.png")
              //TODO: fix the SVG not displaying issue
              // SvgPicture.asset(
              //   'assets/bgPattern.svg',
              //   width: 200,  // Set width
              //   height: 200,  // Set height
              //   fit: BoxFit.contain,  // Make sure it scales properly
              // )
              )),
    );
  }
}

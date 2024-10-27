import 'package:flutter/material.dart';





///Takes a String and produces bullet pointed list. Used in the [InstructorClasses]
///tab. The bullet points are recognised by full stops.
class BulletPointer extends Text{
  late List<String> points;

  BulletPointer(super.data, {super.key, TextStyle? style}){
    points = data!.trim().split(".");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (String point in points)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: (style ?? const TextStyle(fontSize: 11)).fontSize!/2),
                child: const Icon(Icons.circle, size: 6, color: Color.fromRGBO(66, 84, 102, 1),),
              ),
              const SizedBox(width: 15),
              Expanded(child: Text(point, style: style,))

            ],
          )

      ],
    );
  }
}
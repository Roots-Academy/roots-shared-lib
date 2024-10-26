import 'package:flutter/material.dart';

Column defaultStudentView() {
  return Column(
    children: [
      //const Spacer(),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(color: Colors.black.withAlpha(30))
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Center(
                  child: Text(
                    "Please pay attention to the instructor. They will let you know when your device is needed",
                    textAlign: TextAlign.center,
                    maxLines: null,
                  )),
            ),
          ),
        ),
      ),
      //const Spacer(flex: 2),
    ],
  );
}
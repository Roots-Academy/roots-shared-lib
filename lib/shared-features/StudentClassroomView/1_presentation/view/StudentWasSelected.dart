import 'package:flutter/material.dart';

Column studentWasSelected() => Column(children: [
      const Spacer(),
      Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
            color: Colors.green,
            child: const Center(
              child: Text(
                "You were selected! Raise your hand!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
                textAlign: TextAlign.center,
              ),
            ),
          )),
      const Spacer(),
    ]);

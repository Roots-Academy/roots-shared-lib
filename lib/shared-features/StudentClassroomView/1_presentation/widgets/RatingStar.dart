import 'package:flutter/material.dart';

Widget ratingStar(int value) {
  return GestureDetector(
    onTap: (){
      // rating = value;
      // setState(() {
      //
      // });
    },
    child: Container(width: 50, height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.transparent
      ),
      child: Icon(Icons.star, size: 55,
          // color: (value<= rating) ? (rating == 1)? Colors.red:(rating <3)? Colors.orange:(rating<4)? Colors.yellow: Colors.green: Colors.grey
      ),
    ),
  );
}
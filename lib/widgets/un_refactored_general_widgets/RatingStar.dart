

import 'package:flutter/material.dart';


///Star used for rating
class RatingStar extends StatelessWidget {
  const RatingStar({super.key, required this.value, required this.rating});
  final int value;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(width: 30, height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.transparent
      ),
      child: Icon(Icons.star, size: 30,
          color: (value<= rating) ? (rating == 1)? Colors.red:(rating <3)? Colors.amber:(rating<4)? Colors.yellow: Colors.green: Colors.grey
      ),
    );
  }
}


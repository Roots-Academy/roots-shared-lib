import 'dart:convert';

//research
abstract class Review {
  final String id;
  final int numOfStars;
  final String? text;
  final DateTime dateTime;

  Review(
      {required this.id,
      required this.numOfStars,
      required this.text,
      required this.dateTime});
}

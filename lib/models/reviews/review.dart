
import 'package:cloud_firestore/cloud_firestore.dart';

//research
abstract class Review {
  final String id;
  final int numOfStars;
  final String? text;
  final Timestamp creationTime;

  Review(
      {required this.id,
      required this.numOfStars,
      required this.text,
      required this.creationTime});
}

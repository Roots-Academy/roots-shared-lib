import 'package:roots_shared_lib/models/reviews/review.dart';

abstract class StudentReview extends Review {
  final String studentId;
  StudentReview(
      {required super.id,
      required super.numOfStars,
      required super.text,
      required super.creationTime,
      required this.studentId});
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:roots_shared_lib/models/reviews/student_review/student_review.dart';

class StudentReviewForLocalWorkshop extends StudentReview {
  final String localWorkshopId;
  // final String studentId;
  // final String id;
  // final int numOfStars;
  // final String? text;
  // final DateTime dateTime;
  StudentReviewForLocalWorkshop({
    required this.localWorkshopId,
    required super.studentId,
    required super.id,
    required super.numOfStars,
    super.text,
    required super.dateTime,
  });

  StudentReviewForLocalWorkshop copyWith({
    String? localWorkshopId,
    String? studentId,
    String? id,
    int? numOfStars,
    String? text,
    DateTime? dateTime,
  }) {
    return StudentReviewForLocalWorkshop(
      localWorkshopId: localWorkshopId ?? this.localWorkshopId,
      studentId: studentId ?? this.studentId,
      id: id ?? this.id,
      numOfStars: numOfStars ?? this.numOfStars,
      text: text ?? this.text,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localWorkshopId': localWorkshopId,
      'studentId': studentId,
      'id': id,
      'numOfStars': numOfStars,
      'text': text,
      'dateTime': dateTime.millisecondsSinceEpoch,
    };
  }

  factory StudentReviewForLocalWorkshop.fromMap(Map<String, dynamic> map) {
    return StudentReviewForLocalWorkshop(
      localWorkshopId: map['localWorkshopId'] as String,
      studentId: map['studentId'] as String,
      id: map['id'] as String,
      numOfStars: map['numOfStars'] as int,
      text: map['text'] != null ? map['text'] as String : null,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentReviewForLocalWorkshop.fromJson(String source) =>
      StudentReviewForLocalWorkshop.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StudentReviewForLocalWorkshop(localWorkshopId: $localWorkshopId, studentId: $studentId, id: $id, numOfStars: $numOfStars, text: $text, dateTime: $dateTime)';
  }

  @override
  bool operator ==(covariant StudentReviewForLocalWorkshop other) {
    if (identical(this, other)) return true;

    return other.localWorkshopId == localWorkshopId &&
        other.studentId == studentId &&
        other.id == id &&
        other.numOfStars == numOfStars &&
        other.text == text &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return localWorkshopId.hashCode ^
        studentId.hashCode ^
        id.hashCode ^
        numOfStars.hashCode ^
        text.hashCode ^
        dateTime.hashCode;
  }
}

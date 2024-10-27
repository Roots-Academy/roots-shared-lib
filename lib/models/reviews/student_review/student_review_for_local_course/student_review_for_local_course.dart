// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roots_shared_lib/models/reviews/student_review/student_review.dart';

class StudentReviewForLocalCourse extends StudentReview {
  final String localCourseId;
  StudentReviewForLocalCourse({
    required this.localCourseId,
    required super.studentId,
    required super.id,
    required super.numOfStars,
    super.text,
    required super.creationTime,
  });




  StudentReviewForLocalCourse copyWith({
    String? localCourseId,
    String? studentId,
    String? id,
    int? numOfStars,
    String? text,
    Timestamp? creationTime,
  }) {
    return StudentReviewForLocalCourse(
      localCourseId: localCourseId ?? this.localCourseId,
      studentId: studentId ?? this.studentId,
      id: id ?? this.id,
      numOfStars: numOfStars ?? this.numOfStars,
      text: text ?? this.text,
      creationTime: creationTime ?? this.creationTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localCourseId': localCourseId,
      'studentId': studentId,
      'id': id,
      'numOfStars': numOfStars,
      'text': text,
      'creationTime': creationTime,
    };
  }

  factory StudentReviewForLocalCourse.fromMap(Map<String, dynamic> map) {
    return StudentReviewForLocalCourse(
      localCourseId: map['localCourseId'] as String,
      studentId: map['studentId'] as String,
      id: map['id'] as String,
      numOfStars: map['numOfStars'] as int,
      text: map['text'] != null ? map['text'] as String : null,
      creationTime: (map['creationTime'] as Timestamp),
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentReviewForLocalCourse.fromJson(String source) => StudentReviewForLocalCourse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StudentReviewForLocalCourse(localCourseId: $localCourseId, studentId: $studentId, id: $id, numOfStars: $numOfStars, text: $text, creationTime: $creationTime)';
  }

  @override
  bool operator ==(covariant StudentReviewForLocalCourse other) {
    if (identical(this, other)) return true;
  
    return 
      other.localCourseId == localCourseId &&
      other.studentId == studentId &&
      other.id == id &&
      other.numOfStars == numOfStars &&
      other.text == text &&
      other.creationTime == creationTime;
  }

  @override
  int get hashCode {
    return localCourseId.hashCode ^
      studentId.hashCode ^
      id.hashCode ^
      numOfStars.hashCode ^
      text.hashCode ^
      creationTime.hashCode;
  }
}

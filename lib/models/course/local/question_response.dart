// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:roots_shared_lib/models/course/global/question/answer.dart';

class QuestionResponse {
  final String id;
  final Answer answer;
  final String localWorkshopId;
  final String questionId;
  final String studentId;
  final bool isAnswered;
  final DateTime dateTime;
  final bool isRemoved;
  final bool isInAppropriate;
  QuestionResponse({
    required this.id,
    required this.answer,
    required this.localWorkshopId,
    required this.questionId,
    required this.studentId,
    required this.isAnswered,
    required this.dateTime,
    required this.isRemoved,
    required this.isInAppropriate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'answer': answer.toMap(),
      'localWorkshopId': localWorkshopId,
      'questionId': questionId,
      'studentId': studentId,
      'isAnswered': isAnswered,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'isRemoved': isRemoved,
      'isInAppropriate': isInAppropriate,
    };
  }

  factory QuestionResponse.fromMap(Map<String, dynamic> map) {
    return QuestionResponse(
      id: map['id'] as String,
      answer: Answer.fromMap(map['answer'] as Map<String, dynamic>),
      localWorkshopId: map['localWorkshopId'] as String,
      questionId: map['questionId'] as String,
      studentId: map['studentId'] as String,
      isAnswered: map['isAnswered'] as bool,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
      isRemoved: map['isRemoved'] as bool,
      isInAppropriate: map['isInAppropriate'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionResponse.fromJson(String source) =>
      QuestionResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'QuestionResponse(id: $id, answer: $answer, localWorkshopId: $localWorkshopId, questionId: $questionId, studentId: $studentId, isAnswered: $isAnswered, dateTime: $dateTime, isRemoved: $isRemoved, isInAppropriate: $isInAppropriate)';
  }

  @override
  bool operator ==(covariant QuestionResponse other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.answer == answer &&
        other.localWorkshopId == localWorkshopId &&
        other.questionId == questionId &&
        other.studentId == studentId &&
        other.isAnswered == isAnswered &&
        other.dateTime == dateTime &&
        other.isRemoved == isRemoved &&
        other.isInAppropriate == isInAppropriate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        answer.hashCode ^
        localWorkshopId.hashCode ^
        questionId.hashCode ^
        studentId.hashCode ^
        isAnswered.hashCode ^
        dateTime.hashCode ^
        isRemoved.hashCode ^
        isInAppropriate.hashCode;
  }
}

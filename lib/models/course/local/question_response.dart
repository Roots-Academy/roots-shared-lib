// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:roots_shared_lib/models/course/global/question/answers/answers_factory.dart';

import '../global/question/answers/models/answer.dart';

class QuestionResponse {
  final String id;
  final Answer answer;
  final String localWorkshopId;
  final String questionId;
  final String studentId;
  final bool isAnswered;
  final DateTime creationTime;
  final bool isRemoved;
  final bool isInAppropriate;
  QuestionResponse({
    required this.id,
    required this.answer,
    required this.localWorkshopId,
    required this.questionId,
    required this.studentId,
    required this.isAnswered,
    required this.creationTime,
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
      'creationTime': creationTime.millisecondsSinceEpoch,
      'isRemoved': isRemoved,
      'isInAppropriate': isInAppropriate,
    };
  }

  factory QuestionResponse.fromMap(Map<String, dynamic> map) {
    return QuestionResponse(
      id: map['id'] as String,
      answer: AnswerFactory.fromMap((map['answer'] as Map<dynamic, dynamic>)
          .map((key, value) => MapEntry(key.toString(), value))),
      localWorkshopId: map['localWorkshopId'] as String,
      questionId: map['questionId'] as String,
      studentId: map['studentId'] as String,
      isAnswered: map['isAnswered'] as bool,
      creationTime: DateTime.fromMillisecondsSinceEpoch(map['creationTime']),
      isRemoved: map['isRemoved'] as bool,
      isInAppropriate: map['isInAppropriate'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionResponse.fromJson(String source) =>
      QuestionResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'QuestionResponse(id: $id, answer: $answer, localWorkshopId: $localWorkshopId, questionId: $questionId, studentId: $studentId, isAnswered: $isAnswered, creationTime: $creationTime, isRemoved: $isRemoved, isInAppropriate: $isInAppropriate)';
  }

  QuestionResponse copyWith({
    String? id,
    Answer? answer,
    String? localWorkshopId,
    String? questionId,
    String? studentId,
    bool? isAnswered,
    DateTime? creationTime,
    bool? isRemoved,
    bool? isInAppropriate,
  }) {
    return QuestionResponse(
      id: id ?? this.id,
      answer: answer ?? this.answer,
      localWorkshopId: localWorkshopId ?? this.localWorkshopId,
      questionId: questionId ?? this.questionId,
      studentId: studentId ?? this.studentId,
      isAnswered: isAnswered ?? this.isAnswered,
      creationTime: creationTime ?? this.creationTime,
      isRemoved: isRemoved ?? this.isRemoved,
      isInAppropriate: isInAppropriate ?? this.isInAppropriate,
    );
  }
}

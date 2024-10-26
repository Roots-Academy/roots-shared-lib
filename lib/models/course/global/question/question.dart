// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:roots_shared_lib/models/course/global/question/answer.dart';

class Question {
  final String id;
  final int slideNo;
  final String questionText;
  final String globalWorkshopId;
  // final QuestionType type;
  final List<Answer>? mcqAnswers;
  Question({
    required this.id,
    required this.slideNo,
    required this.questionText,
    required this.globalWorkshopId,
    this.mcqAnswers,
  });

  Question copyWith(
      {String? id,
      String? questionText,
      List<Answer>? mcqAnswers,
      String? globalWorkshopId}) {
    return Question(
        id: id ?? this.id,
        globalWorkshopId: globalWorkshopId ?? this.globalWorkshopId,
        questionText: questionText ?? this.questionText,
        mcqAnswers: mcqAnswers ?? this.mcqAnswers,
        slideNo: slideNo);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'questionText': questionText,
      'mcqAnswers': mcqAnswers?.map((x) => x.toMap()).toList(),
      "slideNo": slideNo,
      'globalWorkshopId': globalWorkshopId
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] as String,
      questionText: map['questionText'] as String,
      mcqAnswers: map['mcqAnswers'] != null
          ? List<Answer>.from(
              (map['mcqAnswers'] as List<dynamic>).map<Answer?>(
                (x) => Answer.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      slideNo: map['slideNo'] as int,
      globalWorkshopId: map['globalWorkshopId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Question(id: $id, questionText: $questionText, mcqAnswers: $mcqAnswers)';

  @override
  bool operator ==(covariant Question other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.questionText == questionText &&
        listEquals(other.mcqAnswers, mcqAnswers);
  }

  @override
  int get hashCode => id.hashCode ^ questionText.hashCode ^ mcqAnswers.hashCode;
}

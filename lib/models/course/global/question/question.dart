// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'choice.dart';

class Question {
  final String id;
  final int slideNo;
  final String questionText;
  // final QuestionType type;
  final List<Choice>? choices;
  Question({
    required this.id,
    required this.slideNo,
    required this.questionText,
    this.choices,
  });

  Question copyWith({
    String? id,
    String? questionText,
    List<Choice>? choices,
  }) {
    return Question(
        id: id ?? this.id,
        questionText: questionText ?? this.questionText,
        choices: choices ?? this.choices,
        slideNo: slideNo);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'questionText': questionText,
      'choices': choices?.map((x) => x.toMap()).toList(),
      "slideNo": slideNo
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] as String,
      questionText: map['questionText'] as String,
      choices: map['choices'] != null
          ? List<Choice>.from(
              (map['choices'] as List<dynamic>).map<Choice?>(
                (x) => Choice.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      slideNo: map['slideNo'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Question(id: $id, questionText: $questionText, choices: $choices)';

  @override
  bool operator ==(covariant Question other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.questionText == questionText &&
        listEquals(other.choices, choices);
  }

  @override
  int get hashCode => id.hashCode ^ questionText.hashCode ^ choices.hashCode;
}

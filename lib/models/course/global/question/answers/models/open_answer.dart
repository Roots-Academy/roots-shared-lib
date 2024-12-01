// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import '../answers_types.dart';
import 'answer.dart';

class OpenAnswer extends Answer {
  final String answerText;
  OpenAnswer({
    required this.answerText,
    required super.questionId,
    // required super.type,
  }) : super(type: AnswersTypes.openAnswer);

  OpenAnswer copyWith({
    String? answerText,
    String? questionId,
    String? type,
  }) {
    return OpenAnswer(
      answerText: answerText ?? this.answerText,
      questionId: questionId ?? this.questionId,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answerText': answerText,
      'questionId': questionId,
      'type': type,
    };
  }
  @override

  factory OpenAnswer.fromMap(Map<String, dynamic> map) {
    return OpenAnswer(
      answerText: map['answerText'] as String,
      questionId: map['questionId'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  factory OpenAnswer.fromJson(String source) =>
      OpenAnswer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'OpenAnswer(answerText: $answerText, questionId: $questionId, type: $type)';

  @override
  bool operator ==(covariant OpenAnswer other) {
    if (identical(this, other)) return true;

    return other.answerText == answerText &&
        other.questionId == questionId &&
        other.type == type;
  }

  @override
  int get hashCode => answerText.hashCode ^ questionId.hashCode ^ type.hashCode;
}

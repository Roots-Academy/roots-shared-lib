// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
//  enum QuestionType{open, multipleChoice}

class Question {
  final String id;
  final String questionText;
  // final QuestionType type;
  final String answer;
  final int responseTextMaxLimit;
  Question({
    required this.id,
    required this.questionText,
    required this.answer,
    required this.responseTextMaxLimit
  });




  Question copyWith({
    String? id,
    String? questionText,
    String? answer,
    int? responseTextMaxLimit,
  }) {
    return Question(
      id: id ?? this.id,
      questionText: questionText ?? this.questionText,
      answer: answer ?? this.answer,
      responseTextMaxLimit: responseTextMaxLimit ?? this.responseTextMaxLimit,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'questionText': questionText,
      'answer': answer,
      'responseTextMaxLimit': responseTextMaxLimit,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] as String,
      questionText: map['questionText'] as String,
      answer: map['answer'] as String,
      responseTextMaxLimit: map['responseTextMaxLimit'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) => Question.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Question(id: $id, questionText: $questionText, answer: $answer, responseTextMaxLimit: $responseTextMaxLimit)';
  }

  @override
  bool operator ==(covariant Question other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.questionText == questionText &&
      other.answer == answer &&
      other.responseTextMaxLimit == responseTextMaxLimit;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      questionText.hashCode ^
      answer.hashCode ^
      responseTextMaxLimit.hashCode;
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
// enum QuestionType{open, multipleChoice}

class Question {
  final String id;
  final String questionText;
  // final QuestionType type;
  final String questionAnswer;
  final int responseTextMaxLimit;
  Question({
    required this.id,
    required this.questionText,
    // required this.type,
    required this.questionAnswer,
    required this.responseTextMaxLimit
  });



}

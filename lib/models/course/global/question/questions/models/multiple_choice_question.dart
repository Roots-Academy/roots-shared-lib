// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'question.dart';
import '../question_types.dart';

class MultipleChoiceQuestion extends Question {
  final List<String> options;
  final String correctOption;

  MultipleChoiceQuestion({
    required this.options,
    required this.correctOption,
    required super.id,
    required super.text,
    required super.globalWorkshopId,
    required super.slideNo,
  }) : super(type: QuestionTypes.multipleChoice);

  MultipleChoiceQuestion copyWith({
    List<String>? options,
    String? correctOption,
    String? id,
    String? type,
    String? text,
    String? globalWorkshopId,
    int? slideNo,
  }) {
    return MultipleChoiceQuestion(
      options: options ?? this.options,
      correctOption: correctOption ?? this.correctOption,
      id: id ?? this.id,
      text: text ?? this.text,
      globalWorkshopId: globalWorkshopId ?? this.globalWorkshopId,
      slideNo: slideNo ?? this.slideNo,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': options,
      'correctOption': correctOption,
      'id': id,
      'type': type,
      'text': text,
      'globalWorkshopId': globalWorkshopId,
      'slideNo': slideNo,
    };
  }

  @override
  factory MultipleChoiceQuestion.fromMap(Map<String, dynamic> map) {
    return MultipleChoiceQuestion(
      options: List<String>.from((map['options'] as List<dynamic>)),
      correctOption: map['correctOption'] as String,
      id: map['id'] as String,
      text: map['text'] as String,
      globalWorkshopId: map['globalWorkshopId'] as String,
      slideNo: map['slideNo'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  // factory MultipleChoiceQuestion.fromJson(String source) =>
  //     MultipleChoiceQuestion.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MultipleChoiceQuestion(options: $options, correctOption: $correctOption, id: $id, type: $type, text: $text, globalWorkshopId: $globalWorkshopId, slideNo: $slideNo)';
  }

  @override
  bool operator ==(covariant MultipleChoiceQuestion other) {
    if (identical(this, other)) return true;

    return listEquals(other.options, options) &&
        other.correctOption == correctOption &&
        other.id == id &&
        other.type == type &&
        other.text == text &&
        other.globalWorkshopId == globalWorkshopId &&
        other.slideNo == slideNo;
  }

  @override
  int get hashCode {
    return options.hashCode ^
        correctOption.hashCode ^
        id.hashCode ^
        type.hashCode ^
        text.hashCode ^
        globalWorkshopId.hashCode ^
        slideNo.hashCode;
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'question.dart';
import '../question_types.dart';

class OpenAnswerQuestion extends Question {
  OpenAnswerQuestion({
    required super.id,
    required super.text,
    required super.globalWorkshopId,
    required super.slideNo,
  }):super(type: QuestionTypes.openAnswer);

  OpenAnswerQuestion copyWith({
    String? id,
    String? text,
    String? globalWorkshopId,
    int? slideNo,
  }) {
    return OpenAnswerQuestion(
      id: id ?? this.id,
      text: text ?? this.text,
      globalWorkshopId: globalWorkshopId ?? this.globalWorkshopId,
      slideNo: slideNo ?? this.slideNo,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'text': text,
      'globalWorkshopId': globalWorkshopId,
      'slideNo': slideNo,
    };
  }
@override
  factory OpenAnswerQuestion.fromMap(Map<String, dynamic> map) {
    return OpenAnswerQuestion(
      id: map['id'] as String,
      text: map['text'] as String,
      globalWorkshopId: map['globalWorkshopId'] as String,
      slideNo: map['slideNo'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  // factory OpenAnswerQuestion.fromJson(String source) =>
  //     OpenAnswerQuestion.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OpenAnswerQuestion(id: $id, type: $type, text: $text, globalWorkshopId: $globalWorkshopId, slideNo: $slideNo)';
  }

  @override
  bool operator ==(covariant OpenAnswerQuestion other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.type == type &&
        other.text == text &&
        other.globalWorkshopId == globalWorkshopId &&
        other.slideNo == slideNo;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        type.hashCode ^
        text.hashCode ^
        globalWorkshopId.hashCode ^
        slideNo.hashCode;
  }
}

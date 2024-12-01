// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import '../answers_types.dart';
import 'answer.dart';

class MultipleChoiceAnswer extends Answer {
  final String selectedOption;
  MultipleChoiceAnswer({
    required this.selectedOption,
    required super.questionId,
    // required super.type,
  }) : super(type: AnswersTypes.multipleChoice);

  MultipleChoiceAnswer copyWith({
    String? selectedOption,
    String? questionId,
    String? type,
  }) {
    return MultipleChoiceAnswer(
      selectedOption: selectedOption ?? this.selectedOption,
      questionId: questionId ?? this.questionId,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedOption': selectedOption,
      'questionId': questionId,
      'type': type,
    };
  }
  @override
  factory MultipleChoiceAnswer.fromMap(Map<String, dynamic> map) {
    return MultipleChoiceAnswer(
      selectedOption: map['selectedOption'] as String,
      questionId: map['questionId'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  factory MultipleChoiceAnswer.fromJson(String source) =>
      MultipleChoiceAnswer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'MultipleChoiceAnswer(selectedOption: $selectedOption, questionId: $questionId, type: $type)';

  @override
  bool operator ==(covariant MultipleChoiceAnswer other) {
    if (identical(this, other)) return true;

    return other.selectedOption == selectedOption &&
        other.questionId == questionId &&
        other.type == type;
  }

  @override
  int get hashCode =>
      selectedOption.hashCode ^ questionId.hashCode ^ type.hashCode;
}

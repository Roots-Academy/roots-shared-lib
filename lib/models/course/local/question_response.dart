// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class QuestionResponse {
  final String text;
  final String id;
  final String questionId;
  final String userId;
  final bool isAnswered;
  final DateTime dateTime;
  final bool isRemoved;
  final bool isInAppropriate;

  QuestionResponse(
      {required this.text,
      required this.id,
      required this.questionId,
      required this.userId,
      required this.isAnswered,
      required this.dateTime,
      required this.isRemoved,
      required this.isInAppropriate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'id': id,
      'questionId': questionId,
      'userId': userId,
      'isAnswered': isAnswered,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'isRemoved': isRemoved,
      'isInAppropriate': isInAppropriate,
    };
  }

  factory QuestionResponse.fromMap(Map<String, dynamic> map) {
    return QuestionResponse(
      text: map['text'] as String,
      id: map['id'] as String,
      questionId: map['questionId'] as String,
      userId: map['userId'] as String,
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
    return 'QuestionResponse(text: $text, id: $id, questionId: $questionId, userId: $userId, isAnswered: $isAnswered, dateTime: $dateTime, isRemoved: $isRemoved, isInAppropriate: $isInAppropriate)';
  }

  @override
  bool operator ==(covariant QuestionResponse other) {
    if (identical(this, other)) return true;

    return other.text == text &&
        other.id == id &&
        other.questionId == questionId &&
        other.userId == userId &&
        other.isAnswered == isAnswered &&
        other.dateTime == dateTime &&
        other.isRemoved == isRemoved &&
        other.isInAppropriate == isInAppropriate;
  }

  @override
  int get hashCode {
    return text.hashCode ^
        id.hashCode ^
        questionId.hashCode ^
        userId.hashCode ^
        isAnswered.hashCode ^
        dateTime.hashCode ^
        isRemoved.hashCode ^
        isInAppropriate.hashCode;
  }
}

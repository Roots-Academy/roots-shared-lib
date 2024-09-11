import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Review {
  String id;
  int numOfStars;
  String? text;
  String studentId;
  DateTime dateTime;
  Review({
    required this.id,
    required this.numOfStars,
    this.text,
    required this.studentId,
    required this.dateTime,
  });






  Review copyWith({
    String? id,
    int? numOfStars,
    String? text,
    String? studentId,
    DateTime? dateTime,
  }) {
    return Review(
      id: id ?? this.id,
      numOfStars: numOfStars ?? this.numOfStars,
      text: text ?? this.text,
      studentId: studentId ?? this.studentId,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'numOfStars': numOfStars,
      'text': text,
      'studentId': studentId,
      'dateTime': dateTime.millisecondsSinceEpoch,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      id: map['id'] as String,
      numOfStars: map['numOfStars'] as int,
      text: map['text'] != null ? map['text'] as String : null,
      studentId: map['studentId'] as String,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Review(id: $id, numOfStars: $numOfStars, text: $text, studentId: $studentId, dateTime: $dateTime)';
  }

  @override
  bool operator ==(covariant Review other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.numOfStars == numOfStars &&
      other.text == text &&
      other.studentId == studentId &&
      other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      numOfStars.hashCode ^
      text.hashCode ^
      studentId.hashCode ^
      dateTime.hashCode;
  }
}

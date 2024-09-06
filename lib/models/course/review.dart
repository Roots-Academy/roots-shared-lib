import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Review {
  String reviewId;
  int numOfStars;
  String userId;
  String localWorkshopId;
  String text;
  String studentId;
  DateTime dateTime;
  Review({
    required this.reviewId,
    required this.numOfStars,
    required this.userId,
    required this.localWorkshopId,
    required this.text,
    required this.studentId,
    required this.dateTime,
  });



  Review copyWith({
    String? reviewId,
    int? numOfStars,
    String? userId,
    String? localWorkshopId,
    String? text,
    String? studentId,
    DateTime? dateTime,
  }) {
    return Review(
      reviewId: reviewId ?? this.reviewId,
      numOfStars: numOfStars ?? this.numOfStars,
      userId: userId ?? this.userId,
      localWorkshopId: localWorkshopId ?? this.localWorkshopId,
      text: text ?? this.text,
      studentId: studentId ?? this.studentId,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reviewId': reviewId,
      'numOfStars': numOfStars,
      'userId': userId,
      'localWorkshopId': localWorkshopId,
      'text': text,
      'studentId': studentId,
      'dateTime': dateTime.millisecondsSinceEpoch,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      reviewId: map['reviewId'] as String,
      numOfStars: map['numOfStars'] as int,
      userId: map['userId'] as String,
      localWorkshopId: map['localWorkshopId'] as String,
      text: map['text'] as String,
      studentId: map['studentId'] as String,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Review(reviewId: $reviewId, numOfStars: $numOfStars, userId: $userId, localWorkshopId: $localWorkshopId, text: $text, studentId: $studentId, dateTime: $dateTime)';
  }

  @override
  bool operator ==(covariant Review other) {
    if (identical(this, other)) return true;
  
    return 
      other.reviewId == reviewId &&
      other.numOfStars == numOfStars &&
      other.userId == userId &&
      other.localWorkshopId == localWorkshopId &&
      other.text == text &&
      other.studentId == studentId &&
      other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return reviewId.hashCode ^
      numOfStars.hashCode ^
      userId.hashCode ^
      localWorkshopId.hashCode ^
      text.hashCode ^
      studentId.hashCode ^
      dateTime.hashCode;
  }
}

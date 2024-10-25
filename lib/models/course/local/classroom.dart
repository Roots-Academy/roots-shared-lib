// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class Classroom {
  final String localWorkshopId;
  final String? currentQuestionId;
  final DateTime openTime;
  final String? selectedStudentId;
  Classroom({
    required this.localWorkshopId,
    required this.currentQuestionId,
    required this.openTime,
    required this.selectedStudentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localWorkshopId': localWorkshopId,
      'currentQuestionId': currentQuestionId,
      'openTime': openTime.millisecondsSinceEpoch,
      'selectedStudentId': selectedStudentId,
    };
  }

  factory Classroom.fromMap(Map<String, dynamic> map) {
    return Classroom(
      localWorkshopId: map['localWorkshopId'] as String,
      currentQuestionId: map['currentQuestionId'] != null
          ? map['currentQuestionId'] as String
          : null,
      openTime: DateTime.fromMillisecondsSinceEpoch(map['openTime'] as int),
      selectedStudentId: map['selectedStudentId'] != null
          ? map['selectedStudentId'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Classroom.fromJson(String source) =>
      Classroom.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Classroom(localWorkshopId: $localWorkshopId, currentQuestionId: $currentQuestionId, openTime: $openTime, selectedStudentId: $selectedStudentId)';
  }

  @override
  bool operator ==(covariant Classroom other) {
    if (identical(this, other)) return true;

    return other.localWorkshopId == localWorkshopId &&
        other.currentQuestionId == currentQuestionId &&
        other.openTime == openTime &&
        other.selectedStudentId == selectedStudentId;
  }

  @override
  int get hashCode {
    return localWorkshopId.hashCode ^
        currentQuestionId.hashCode ^
        openTime.hashCode ^
        selectedStudentId.hashCode;
  }
}

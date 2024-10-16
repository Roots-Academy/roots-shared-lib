// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class Classroom {
  final String localWorkshopId;
  final String currentQuestionId;
  final List<String> availableStudentsIds;
  final DateTime openTime;
  final String selectedStudentId;
  Classroom({
    required this.localWorkshopId,
    required this.currentQuestionId,
    required this.availableStudentsIds,
    required this.openTime,
    required this.selectedStudentId,
  });

  Classroom copyWith({
    String? localWorkshopId,
    String? currentQuestionId,
    List<String>? availableStudentsIds,
    DateTime? openTime,
    String? selectedStudentId,
  }) {
    return Classroom(
      localWorkshopId: localWorkshopId ?? this.localWorkshopId,
      currentQuestionId: currentQuestionId ?? this.currentQuestionId,
      availableStudentsIds: availableStudentsIds ?? this.availableStudentsIds,
      openTime: openTime ?? this.openTime,
      selectedStudentId: selectedStudentId ?? this.selectedStudentId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localWorkshopId': localWorkshopId,
      'currentQuestionId': currentQuestionId,
      'availableStudentsIds': availableStudentsIds,
      'openTime': openTime.millisecondsSinceEpoch,
      'selectedStudentId': selectedStudentId,
    };
  }

  factory Classroom.fromMap(Map<String, dynamic> map) {
    return Classroom(
      localWorkshopId: map['localWorkshopId'] as String,
      currentQuestionId: map['currentQuestionId'] as String,
      availableStudentsIds:
          List<String>.from((map['availableStudentsIds'] as List<dynamic>)),
      openTime: DateTime.fromMillisecondsSinceEpoch(map['openTime'] as int),
      selectedStudentId: map['selectedStudentId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Classroom.fromJson(String source) =>
      Classroom.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Classroom(localWorkshopId: $localWorkshopId, currentQuestionId: $currentQuestionId, availableStudentsIds: $availableStudentsIds, openTime: $openTime, selectedStudentId: $selectedStudentId)';
  }

  @override
  bool operator ==(covariant Classroom other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.localWorkshopId == localWorkshopId &&
        other.currentQuestionId == currentQuestionId &&
        listEquals(other.availableStudentsIds, availableStudentsIds) &&
        other.openTime == openTime &&
        other.selectedStudentId == selectedStudentId;
  }

  @override
  int get hashCode {
    return localWorkshopId.hashCode ^
        currentQuestionId.hashCode ^
        availableStudentsIds.hashCode ^
        openTime.hashCode ^
        selectedStudentId.hashCode;
  }
}

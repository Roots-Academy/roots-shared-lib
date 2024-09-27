import 'dart:convert';

import 'package:collection/collection.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class LocalCourse {
  final String id;
  final String globalCourseId;
  final String instructorId;
  //convert instructorId to be a list of instructors
  final String campusId;
  final String defaultLocation;
  final DateTime scheduledTime;
  //convert it into scheduled weekly time, whether it will be in TimeOfDayOr not


  //nested registered students ids (in nested collection)
  //nested reviews (in nested collection)

  LocalCourse({
    required this.id,
    required this.globalCourseId,
    required this.instructorId,
    required this.campusId,
    required this.defaultLocation,
    required this.scheduledTime,
  });

  LocalCourse copyWith({
    String? id,
    String? globalCourseId,
    String? instructorId,
    String? campusId,
    String? defaultLocation,
    DateTime? scheduledTime,
  }) {
    return LocalCourse(
      id: id ?? this.id,
      globalCourseId: globalCourseId ?? this.globalCourseId,
      instructorId: instructorId ?? this.instructorId,
      campusId: campusId ?? this.campusId,
      defaultLocation: defaultLocation ?? this.defaultLocation,
      scheduledTime: scheduledTime ?? this.scheduledTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'globalCourseId': globalCourseId,
      'instructorId': instructorId,
      'campusId': campusId,
      'defaultLocation': defaultLocation,
      'scheduledTime': scheduledTime.millisecondsSinceEpoch,
    };
  }

  factory LocalCourse.fromMap(Map<String, dynamic> map) {
    return LocalCourse(
      id: map['id'] as String,
      globalCourseId: map['globalCourseId'] as String,
      instructorId: map['instructorId'] as String,
      campusId: map['campusId'] as String,
      defaultLocation: map['defaultLocation'] as String,
      scheduledTime:
          DateTime.fromMillisecondsSinceEpoch(map['scheduledTime'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory LocalCourse.fromJson(String source) =>
      LocalCourse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LocalCourse(id: $id, globalCourseId: $globalCourseId, instructorId: $instructorId, campusId: $campusId, defaultLocation: $defaultLocation, scheduledTime: $scheduledTime)';
  }

  @override
  bool operator ==(covariant LocalCourse other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.globalCourseId == globalCourseId &&
        other.instructorId == instructorId &&
        other.campusId == campusId &&
        other.defaultLocation == defaultLocation &&
        other.scheduledTime == scheduledTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        globalCourseId.hashCode ^
        instructorId.hashCode ^
        campusId.hashCode ^
        defaultLocation.hashCode ^
        scheduledTime.hashCode;
  }
}

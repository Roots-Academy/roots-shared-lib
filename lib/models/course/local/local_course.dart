// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';

class LocalCourse {
  final String id;
  final String globalCourseId;
  final List<String> instructorId;
  final String campusId;
  final String defaultLocation;
  final Timestamp creationTime;
  final Timestamp scheduledWeeklyTime;
  final List<String> studentIds;
  final String? currentLocalWorkshopId;

  //nested reviewsforcourse to be implemented (in nested collection)
  LocalCourse({
    required this.id,
    required this.globalCourseId,
    required this.instructorId,
    required this.campusId,
    required this.creationTime,
    required this.defaultLocation,
    required this.scheduledWeeklyTime,
    required this.studentIds,
    required this.currentLocalWorkshopId,
  });

  LocalCourse copyWith(
      {String? id,
      String? globalCourseId,
      List<String>? instructorId,
      String? campusId,
      String? defaultLocation,
      Timestamp? scheduledWeeklyTime,
      List<String>? studentIds,
      Timestamp? creationTime,
      String? currentLocalWorkshopId}) {
    return LocalCourse(
        id: id ?? this.id,
        globalCourseId: globalCourseId ?? this.globalCourseId,
        instructorId: instructorId ?? this.instructorId,
        campusId: campusId ?? this.campusId,
        creationTime: creationTime ?? this.creationTime,
        defaultLocation: defaultLocation ?? this.defaultLocation,
        scheduledWeeklyTime: scheduledWeeklyTime ?? this.scheduledWeeklyTime,
        studentIds: studentIds ?? this.studentIds,
        currentLocalWorkshopId:
            currentLocalWorkshopId ?? this.currentLocalWorkshopId);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'globalCourseId': globalCourseId,
      'instructorId': instructorId,
      'campusId': campusId,
      'defaultLocation': defaultLocation,
      'scheduledWeeklyTime': scheduledWeeklyTime,
      'studentIds': studentIds,
      'currentLocalWorkshopId': currentLocalWorkshopId,
      'creationTime':creationTime
    };
  }

  factory LocalCourse.fromMap(Map<String, dynamic> map) {
    return LocalCourse(
        id: map['id'] as String,
        globalCourseId: map['globalCourseId'] as String,
        instructorId: List<String>.from((map['instructorId'] as List<String>)),
        campusId: map['campusId'] as String,
        defaultLocation: map['defaultLocation'] as String,
        scheduledWeeklyTime: map['scheduledWeeklyTime'] as Timestamp,
        studentIds: List<String>.from(
          (map['studentIds'] as List<dynamic>),
        ),
        creationTime: map['creationTime'] as Timestamp,
        currentLocalWorkshopId: map['currentLocalWorkshopId'] as String?);
  }

  String toJson() => json.encode(toMap());

  factory LocalCourse.fromJson(String source) =>
      LocalCourse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LocalCourse(id: $id, globalCourseId: $globalCourseId, instructorId: $instructorId, campusId: $campusId, defaultLocation: $defaultLocation, scheduledWeeklyTime: $scheduledWeeklyTime, studentIds: $studentIds)';
  }

  @override
  bool operator ==(covariant LocalCourse other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.globalCourseId == globalCourseId &&
        listEquals(other.instructorId, instructorId) &&
        other.campusId == campusId &&
        other.defaultLocation == defaultLocation &&
        other.scheduledWeeklyTime == scheduledWeeklyTime &&
        listEquals(other.studentIds, studentIds);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        globalCourseId.hashCode ^
        instructorId.hashCode ^
        campusId.hashCode ^
        defaultLocation.hashCode ^
        scheduledWeeklyTime.hashCode ^
        studentIds.hashCode;
  }
}

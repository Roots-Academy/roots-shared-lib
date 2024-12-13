// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:roots_shared_lib/models/course/course.dart';

import '../global/global_course.dart';

class LocalCourse extends Course {
  final GlobalCourse globalCourse;
  final List<String> instructorIds;
  final String campusId;
  final String defaultLocation;
  final Timestamp creationTime;
  final Timestamp scheduledWeeklyTime;
  final List<String> studentIds;
  final String? currentLocalWorkshopId;
  final Timestamp startDateTime;
  final Timestamp endDateTime;

  //nested reviewsforcourse to be implemented (in nested collection)
  LocalCourse(
      {required super.id,
      required this.globalCourse,
      required this.instructorIds,
      required this.campusId,
      required this.creationTime,
      required this.defaultLocation,
      required this.scheduledWeeklyTime,
      required this.studentIds,
      required this.currentLocalWorkshopId,
      required this.startDateTime,
      required this.endDateTime});

  LocalCourse copyWith(
      {String? id,
      GlobalCourse? globalCourse,
      List<String>? instructorIds,
      String? campusId,
      String? defaultLocation,
      Timestamp? scheduledWeeklyTime,
      List<String>? studentIds,
      Timestamp? creationTime,
      String? currentLocalWorkshopId}) {
    return LocalCourse(
        id: id ?? this.id,
        globalCourse: globalCourse ?? this.globalCourse,
        instructorIds: instructorIds ?? this.instructorIds,
        campusId: campusId ?? this.campusId,
        creationTime: creationTime ?? this.creationTime,
        defaultLocation: defaultLocation ?? this.defaultLocation,
        scheduledWeeklyTime: scheduledWeeklyTime ?? this.scheduledWeeklyTime,
        studentIds: studentIds ?? this.studentIds,
        currentLocalWorkshopId:
            currentLocalWorkshopId ?? this.currentLocalWorkshopId,
        startDateTime: startDateTime,
        endDateTime: endDateTime);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'globalCourse': globalCourse.toMap(),
      'instructorIds': instructorIds,
      'campusId': campusId,
      'defaultLocation': defaultLocation,
      'scheduledWeeklyTime': scheduledWeeklyTime,
      'studentIds': studentIds,
      'currentLocalWorkshopId': currentLocalWorkshopId,
      'creationTime': creationTime,
      'startDateTime': startDateTime,
      'endDateTime': endDateTime
    };
  }

  factory LocalCourse.fromMap(Map<String, dynamic> map) {
    return LocalCourse(
        id: map['id'] as String,
        startDateTime: map['startDateTime'] as Timestamp,
        endDateTime: map['endDateTime'] as Timestamp,
        globalCourse:
            GlobalCourse.fromMap(map['globalCourse'] as Map<String, dynamic>),
        instructorIds:
            List<String>.from((map['instructorIds'] as List<dynamic>)),
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
    return 'LocalCourse(id: $id, globalCourse: $globalCourse, instructorIds: $instructorIds, campusId: $campusId, defaultLocation: $defaultLocation, scheduledWeeklyTime: $scheduledWeeklyTime, studentIds: $studentIds)';
  }

  @override
  bool operator ==(covariant LocalCourse other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.globalCourse == globalCourse &&
        listEquals(other.instructorIds, instructorIds) &&
        other.campusId == campusId &&
        other.defaultLocation == defaultLocation &&
        other.scheduledWeeklyTime == scheduledWeeklyTime &&
        listEquals(other.studentIds, studentIds);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        globalCourse.hashCode ^
        instructorIds.hashCode ^
        campusId.hashCode ^
        defaultLocation.hashCode ^
        scheduledWeeklyTime.hashCode ^
        studentIds.hashCode;
  }
}

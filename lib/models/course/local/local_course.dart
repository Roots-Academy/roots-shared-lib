import 'dart:convert';

import 'package:collection/collection.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class LocalCourse {
  final String id;
  final String globalCourseId;
  final String instructorId;
  final String campusId;
  final Map<String, String> workshopIdToLocation;
  final DateTime scheduledTime;
  LocalCourse(
      {required this.id,
      required this.globalCourseId,
      required this.instructorId,
      required this.campusId,
      required this.workshopIdToLocation,
      required this.scheduledTime});

  //students ids (in nested collection)
  //review (in nested collection)

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'globalCourseId': globalCourseId,
      'instructorId': instructorId,
      'campusId': campusId,
      'workshopIdToLocation': workshopIdToLocation,
      'scheduledTime': scheduledTime.millisecondsSinceEpoch,
    };
  }

  factory LocalCourse.fromMap(Map<String, dynamic> map) {
    return LocalCourse(
      id: map['id'] as String,
      globalCourseId: map['globalCourseId'] as String,
      instructorId: map['instructorId'] as String,
      campusId: map['campusId'] as String,
      workshopIdToLocation: Map<String, String>.from(
          (map['workshopIdToLocation'] as Map<dynamic, dynamic>)),
      scheduledTime: DateTime.fromMillisecondsSinceEpoch(map['scheduledTime']),
    );
  }

  String toJson() => json.encode(toMap());

  factory LocalCourse.fromJson(String source) =>
      LocalCourse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LocalCourse(id: $id, globalCourseId: $globalCourseId, instructorId: $instructorId, campusId: $campusId, workshopIdToLocation: $workshopIdToLocation)';
  }

  @override
  bool operator ==(covariant LocalCourse other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.globalCourseId == globalCourseId &&
        other.instructorId == instructorId &&
        other.campusId == campusId &&
        mapEquals(other.workshopIdToLocation, workshopIdToLocation);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        globalCourseId.hashCode ^
        instructorId.hashCode ^
        campusId.hashCode ^
        workshopIdToLocation.hashCode;
  }
}

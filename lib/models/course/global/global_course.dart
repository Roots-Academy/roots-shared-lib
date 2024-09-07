// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class GlobalCourse {
  final String globalCourseId;
  final String courseName;
  final List<String> globalWorkshopIds;
  final String courseShortDescription;
  final String courseVideoLink;
  final String instructorNotesLink;
  final String instructorSlidesLink;
  final String imageLink;
  final String videoLink;

  GlobalCourse({
    required this.globalCourseId,
    required this.courseName,
    required this.globalWorkshopIds,
    required this.courseShortDescription,
    required this.courseVideoLink,
    required this.instructorNotesLink,
    required this.instructorSlidesLink,
    required this.imageLink,
    required this.videoLink,
  });

  GlobalCourse copyWith({
    String? globalCourseId,
    String? courseName,
    List<String>? globalWorkshopIds,
    String? courseShortDescription,
    String? courseVideoLink,
    String? instructorNotesLink,
    String? instructorSlidesLink,
    String? imageLink,
    String? videoLink,
  }) {
    return GlobalCourse(
      globalCourseId: globalCourseId ?? this.globalCourseId,
      courseName: courseName ?? this.courseName,
      globalWorkshopIds: globalWorkshopIds ?? this.globalWorkshopIds,
      courseShortDescription: courseShortDescription ?? this.courseShortDescription,
      courseVideoLink: courseVideoLink ?? this.courseVideoLink,
      instructorNotesLink: instructorNotesLink ?? this.instructorNotesLink,
      instructorSlidesLink: instructorSlidesLink ?? this.instructorSlidesLink,
      imageLink: imageLink ?? this.imageLink,
      videoLink: videoLink ?? this.videoLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalCourseId': globalCourseId,
      'courseName': courseName,
      'globalWorkshopIds': globalWorkshopIds,
      'courseShortDescription': courseShortDescription,
      'courseVideoLink': courseVideoLink,
      'instructorNotesLink': instructorNotesLink,
      'instructorSlidesLink': instructorSlidesLink,
      'imageLink': imageLink,
      'videoLink': videoLink,
    };
  }

  factory GlobalCourse.fromMap(Map<String, dynamic> map) {
    return GlobalCourse(
      globalCourseId: map['globalCourseId'] as String,
      courseName: map['courseName'] as String,
      globalWorkshopIds: List<String>.from((map['globalWorkshopIds'] as List<dynamic>)),
      courseShortDescription: map['courseShortDescription'] as String,
      courseVideoLink: map['courseVideoLink'] as String,
      instructorNotesLink: map['instructorNotesLink'] as String,
      instructorSlidesLink: map['instructorSlidesLink'] as String,
      imageLink: map['imageLink'] as String,
      videoLink: map['videoLink'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GlobalCourse.fromJson(String source) => GlobalCourse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GlobalCourse(globalCourseId: $globalCourseId, courseName: $courseName, globalWorkshopIds: $globalWorkshopIds, courseShortDescription: $courseShortDescription, courseVideoLink: $courseVideoLink, instructorNotesLink: $instructorNotesLink, instructorSlidesLink: $instructorSlidesLink, imageLink: $imageLink, videoLink: $videoLink)';
  }

  @override
  bool operator ==(covariant GlobalCourse other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return 
      other.globalCourseId == globalCourseId &&
      other.courseName == courseName &&
      listEquals(other.globalWorkshopIds, globalWorkshopIds) &&
      other.courseShortDescription == courseShortDescription &&
      other.courseVideoLink == courseVideoLink &&
      other.instructorNotesLink == instructorNotesLink &&
      other.instructorSlidesLink == instructorSlidesLink &&
      other.imageLink == imageLink &&
      other.videoLink == videoLink;
  }

  @override
  int get hashCode {
    return globalCourseId.hashCode ^
      courseName.hashCode ^
      globalWorkshopIds.hashCode ^
      courseShortDescription.hashCode ^
      courseVideoLink.hashCode ^
      instructorNotesLink.hashCode ^
      instructorSlidesLink.hashCode ^
      imageLink.hashCode ^
      videoLink.hashCode;
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:roots_octopus/3_data_layer/models/static/quesion.dart';

import 'dart:convert';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:roots_shared_lib/models/course/global/instructor_training.dart';

import 'question.dart';

class GlobalWorkshop {
  final String id;
  final String name;
  final String description;
  final String videoLink;
  final String instructorNotesLink;
  final String instructorSlidesLink;
  final String imageLink;
  final List<String> studentsWhoAttendedIds;
  final InstructorTraining instructorTraining;
  GlobalWorkshop(
      {required this.id,
      required this.name,
      required this.description,
      required this.videoLink,
      required this.instructorNotesLink,
      required this.instructorSlidesLink,
      required this.imageLink,
      required this.studentsWhoAttendedIds,
      required this.instructorTraining});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'videoLink': videoLink,
      'instructorNotesLink': instructorNotesLink,
      'instructorSlidesLink': instructorSlidesLink,
      'imageLink': imageLink,
      'studentsWhoAttendedIds': studentsWhoAttendedIds,
      'instructorTraining': instructorTraining,
    };
  }

  factory GlobalWorkshop.fromMap(Map<String, dynamic> map) {
    return GlobalWorkshop(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      videoLink: map['videoLink'] as String,
      instructorNotesLink: map['instructorNotesLink'] as String,
      instructorSlidesLink: map['instructorSlidesLink'] as String,
      imageLink: map['imageLink'] as String,
      studentsWhoAttendedIds:
          List<String>.from((map['studentsWhoAttendedIds'] as List<dynamic>)),
      instructorTraining: InstructorTraining.fromMap(map['instructorTraining']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GlobalWorkshop.fromJson(String source) =>
      GlobalWorkshop.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GlobalWorkshop(id: $id, name: $name, description: $description, videoLink: $videoLink, instructorNotesLink: $instructorNotesLink, instructorSlidesLink: $instructorSlidesLink, imageLink: $imageLink, studentsWhoAttendedIds: $studentsWhoAttendedIds)';
  }

  @override
  bool operator ==(covariant GlobalWorkshop other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.videoLink == videoLink &&
        other.instructorNotesLink == instructorNotesLink &&
        other.instructorSlidesLink == instructorSlidesLink &&
        other.imageLink == imageLink &&
        listEquals(other.studentsWhoAttendedIds, studentsWhoAttendedIds);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        videoLink.hashCode ^
        instructorNotesLink.hashCode ^
        instructorSlidesLink.hashCode ^
        imageLink.hashCode ^
        studentsWhoAttendedIds.hashCode;
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:roots_octopus/3_data_layer/models/static/quesion.dart';

import 'dart:convert';
import 'dart:typed_data';

import 'package:collection/collection.dart';

import 'package:roots_shared_lib/models/course/global/instructor_training/instructor_training.dart';

import '../../helper_models/uploaded_file_data.dart';
import 'question/question.dart';

class GlobalWorkshop {
  final String id;
  final String title;
  final int index;
  final String globalCourseId;
  final String description;
  final UploadedFileData instructorNotesLink;
  final UploadedFileData instructorSlidesLink;
  final UploadedFileData imageLink;
  final List<Question> questions;
  GlobalWorkshop({
    required this.id,
    required this.globalCourseId,
    required this.title,
    required this.index,
    required this.description,
    required this.instructorNotesLink,
    required this.instructorSlidesLink,
    required this.imageLink,
    required this.questions,
  });

  GlobalWorkshop copyWith(
      {String? id,
      String? title,
      String? description,
      UploadedFileData? instructorNotesLink,
      UploadedFileData? instructorSlidesLink,
      UploadedFileData? imageLink,
      List<Question>? questions,
      int? index,
      String? globalCourseId}) {
    return GlobalWorkshop(
      id: id ?? this.id,
      index: index ?? this.index,
      globalCourseId: globalCourseId ?? this.globalCourseId,
      title: title ?? this.title,
      description: description ?? this.description,
      instructorNotesLink: instructorNotesLink ?? this.instructorNotesLink,
      instructorSlidesLink: instructorSlidesLink ?? this.instructorSlidesLink,
      imageLink: imageLink ?? this.imageLink,
      questions: questions ?? this.questions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'index': index,
      'description': description,
      'instructorNotesLink': instructorNotesLink.toMap(),
      'instructorSlidesLink': instructorSlidesLink.toMap(),
      'imageLink': imageLink.toMap(),
      'questions': questions.map((x) => x.toMap()).toList(),
      'globalCourseId': globalCourseId
    };
  }

  factory GlobalWorkshop.fromMap(Map<String, dynamic> map) {
    return GlobalWorkshop(
        id: map['id'] as String,
        title: map['title'] as String,
        index: map['index'] as int,
        description: map['description'] as String,
        instructorNotesLink: UploadedFileData.fromMap(
            map['instructorNotesLink'] as Map<String, dynamic>),
        instructorSlidesLink: UploadedFileData.fromMap(
            map['instructorSlidesLink'] as Map<String, dynamic>),
        imageLink:
            UploadedFileData.fromMap(map['imageLink'] as Map<String, dynamic>),
        questions: List<Question>.from(
          (map['questions'] as List<dynamic>).map<Question>(
            (x) => Question.fromMap(x as Map<String, dynamic>),
          ),
        ),
        globalCourseId: map['globalCourseId'] as String);
  }

  String toJson() => json.encode(toMap());

  factory GlobalWorkshop.fromJson(String source) =>
      GlobalWorkshop.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GlobalWorkshop(id: $id, title: $title, description: $description, instructorNotesLink: $instructorNotesLink, instructorSlidesLink: $instructorSlidesLink, imageLink: $imageLink, questions: $questions)';
  }

  @override
  bool operator ==(covariant GlobalWorkshop other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.instructorNotesLink == instructorNotesLink &&
        other.instructorSlidesLink == instructorSlidesLink &&
        other.imageLink == imageLink &&
        listEquals(other.questions, questions);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        instructorNotesLink.hashCode ^
        instructorSlidesLink.hashCode ^
        imageLink.hashCode ^
        questions.hashCode;
  }
}

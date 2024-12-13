// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:roots_shared_lib/models/course/course.dart';


import '../../helper_models/uploaded_file_data.dart';

class GlobalCourse extends Course {
  final String title;
  final String shortDescription;
  final UploadedFileData image;
  // nested instructor trainings of type InstructorTraining

  GlobalCourse({
    required super.id,
    required this.title,
    required this.shortDescription,
    required this.image,
  });

  GlobalCourse copyWith({
    String? id,
    String? title,
    String? shortDescription,
    UploadedFileData? image,
  }) {
    return GlobalCourse(
      id: id ?? this.id,
      title: title ?? this.title,
      shortDescription: shortDescription ?? this.shortDescription,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'shortDescription': shortDescription,
      'image': image.toMap(),
    };
  }

  factory GlobalCourse.fromMap(Map<String, dynamic> map) {
    return GlobalCourse(
      id: map['id'] as String,
      title: map['title'] as String,
      shortDescription: map['shortDescription'] as String,
      image: UploadedFileData.fromMap(map['image'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GlobalCourse.fromJson(String source) =>
      GlobalCourse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GlobalCourse(id: $id, title: $title, shortDescription: $shortDescription, image: $image)';
  }

  @override
  bool operator ==(covariant GlobalCourse other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.shortDescription == shortDescription &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        shortDescription.hashCode ^
        image.hashCode;
  }
}

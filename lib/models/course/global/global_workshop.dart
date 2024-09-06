// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:roots_octopus/3_data_layer/models/static/quesion.dart';

import 'dart:typed_data';

import 'question.dart';

class GlobalWorkshop {
  final String id;
  final String name;
  final List<Question> questions;
  final String description;
  final String videoLink;
  final String instructorNotesLink;
  final String instructorSlidesLink;
  final String imageLink;

  GlobalWorkshop({required this.id, required this.name, required this.questions, required this.description, required this.videoLink, required this.instructorNotesLink, required this.instructorSlidesLink, required this.imageLink});


  //questions in a nested collection
}



import 'package:roots_shared_lib/models/Academic/Global/GlobalWorkshop.dart';

enum QuestionType{open, multipleChoice}

class Question {
  final String id;
  final String questionText;
  final QuestionType type;

  final GlobalWorkshop globalWorkshop;

  final int responseTextMaxLimit;
  Question({
    required this.id,
    required this.questionText,
    required this.type,
    required this.globalWorkshop,
    required this.responseTextMaxLimit
  });



}
import 'package:roots_shared_lib/models/course/global/question/answers/answers_types.dart';

import 'models/answer.dart';
import 'models/multiple_choice_answer.dart';
import 'models/open_answer.dart';

class AnswerFactory {
  static Answer fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case AnswersTypes.multipleChoice:
        return MultipleChoiceAnswer.fromMap(json);
      case AnswersTypes.openAnswer:
        return OpenAnswer.fromMap(json);
      default:
        throw UnsupportedError("Unsupported answer type: ${json['type']}");
    }
  }
}

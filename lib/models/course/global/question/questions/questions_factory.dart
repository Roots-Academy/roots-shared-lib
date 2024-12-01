import 'models/multiple_choice_question.dart';
import 'models/open_answer_question.dart';
import 'models/question.dart';
import 'question_types.dart';

class QuestionFactory {
  static Question fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case QuestionTypes.openAnswer:
        return OpenAnswerQuestion.fromMap(json);
      case QuestionTypes.multipleChoice:
        return MultipleChoiceQuestion.fromMap(json);

      // case "True/False":
      //   return TrueFalseQuestion(
      //     id: json['id'],
      //     text: json['text'],
      //     correctAnswer: json['correct_answer'],
      //   );
      default:
        throw UnsupportedError("Unsupported question type: ${json['type']}");
    }
  }
}

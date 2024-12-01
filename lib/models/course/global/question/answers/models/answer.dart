abstract class Answer {
  final String questionId;
  final String type;

  Answer({required this.questionId, required this.type});
  Map<String, dynamic> toMap();
  factory Answer.fromMap(Map<String, dynamic> map) {
    throw UnimplementedError("fromMap is not implemented in Answer");
  }
}

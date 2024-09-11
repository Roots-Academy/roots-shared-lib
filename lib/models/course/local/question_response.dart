class QuestionResponse {
  final String text;
  final String id;
  final String questionId;
  final String userId;
  final bool isAnswered;
  final DateTime dateTime;
  final bool isRemoved;
  final bool isInAppropriate;

  QuestionResponse(
      {required this.text,
      required this.id,
      required this.userId,
      required this.isAnswered,
      required this.dateTime,
      required this.questionId,
      required this.isRemoved,
      required this.isInAppropriate});
}

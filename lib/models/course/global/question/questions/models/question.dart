abstract class Question {
  final String id;
  final String type;
  final String text;
  final String globalWorkshopId;
  final int slideNo;

  Question(
      {required this.id,
      required this.type,
      required this.text,
      required this.globalWorkshopId,
      required this.slideNo});
  Map<String, dynamic> toMap();
  factory Question.fromMap(Map<String, dynamic> map) {
    throw UnimplementedError("fromMap is not implemented in Answer");
  }
}

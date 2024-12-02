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
}

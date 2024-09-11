class LocalWorkshop {
  final String id;
  final String globalWorkShopId;
  final DateTime scheduledTime;
    // responses (in nested collection)
    // reviews (in nested collection)
    // attendees (in nested collection)

  LocalWorkshop(
      {required this.id,
      required this.globalWorkShopId,
      required this.scheduledTime
    });
}

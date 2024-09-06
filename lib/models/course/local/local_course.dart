class LocalCourse {
  final String id;
  final String globalCourseId;
  final String instructorId;
  final String campusId;
  final Map<String, String> workshopIdToLocation;
   
  LocalCourse({required this.id, required this.globalCourseId, required this.instructorId, required this.campusId, required this.workshopIdToLocation});

  //students ids (in nested collection)
  //review (in nested collection)

}

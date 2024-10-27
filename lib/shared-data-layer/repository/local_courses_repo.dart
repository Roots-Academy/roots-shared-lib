import 'package:roots_shared_lib/models/course/local/local_course.dart';

import '../requests/firestore/local_courses_firestore.dart';

class LocalCoursesRepo {
  final LocalCoursesFirestore _localCoursesFirestore = LocalCoursesFirestore();
  Future<List<LocalCourse>> getLocalCoursesForCampus(
      {required String campusId}) async {
    List<LocalCourse> localCourses = [];

    var querySnapShot = await _localCoursesFirestore.getLocalCoursesForCampus(
        campusId: campusId);

    for (var doc in querySnapShot.docs) {
      localCourses.add(LocalCourse.fromMap(doc.data() as Map<String, dynamic>));
    }
    return localCourses;
  }

  Future<List<LocalCourse>> getLocalCoursesForInstructor(
      {required String instructorId}) async {
    var snapshot = await _localCoursesFirestore.getLocalCoursesForInstructor(
        instructorId: instructorId);

    List<LocalCourse> localCourses = [];
    for (var doc in snapshot.docs) {
      localCourses.add(LocalCourse.fromMap(doc.data() as Map<String, dynamic>));
    }
    return localCourses;
  }
}

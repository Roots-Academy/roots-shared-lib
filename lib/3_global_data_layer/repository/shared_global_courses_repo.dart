import 'package:roots_shared_lib/models/course/global/global_course.dart';

import '../requests/firestore/shared_global_courses_firestore.dart';

class SharedGlobalCoursesRepo {
  final SharedGlobalCoursesFirestore _globalCoursesFirestore =
      SharedGlobalCoursesFirestore();
  Future<List<GlobalCourse>> getAllGlobalCourses() async {
    List<GlobalCourse> globalCourses = [];
    var querySnapShot = await _globalCoursesFirestore.getAllGlobalCourses();
    for (var doc in querySnapShot.docs) {
      globalCourses.add(GlobalCourse.fromMap(doc.data()));
    }
    return globalCourses;
  }

  Future<List<GlobalCourse>> getGlobalCoursesFromIds(
      List<String> globalCoursesIds) async {
    List<GlobalCourse> globalCourses = [];
    var querySnapShot = await _globalCoursesFirestore.getGlobalCoursesFromIds(
        ids: globalCoursesIds);
    for (var doc in querySnapShot.docs) {
      globalCourses.add(GlobalCourse.fromMap(doc.data()));
    }
    return globalCourses;
  }
}

//add numbers to the end of lesson when it's finshed

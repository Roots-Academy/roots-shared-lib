import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roots_shared_lib/end_points/firebase_end_points.dart';
import 'package:roots_shared_lib/models/course/local/local_course.dart';

class LocalCoursesFirestore {
  final CollectionReference _localCoursesReference = FirebaseFirestore.instance
      .collection(FirebaseEndPoints.localCoursesCollection);

  Future<QuerySnapshot<Object?>> getLocalCoursesForCampus(
      {required String campusId}) {
    return _localCoursesReference.where("campusId", isEqualTo: campusId).get();
  }

  Future<QuerySnapshot<Object?>> getLocalCoursesForInstructor(
      {required String instructorId}) {
    return _localCoursesReference
        .where("instructorId", isEqualTo: instructorId)
        .get();
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:roots_shared_lib/end_points/firebase_end_points.dart';

class GlobalWorkshopFirestore {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getAllGlobalWorkshopsInAGlobalCourse({
    required String globalCourseId,
  }) {
    return _firebaseFirestore
        .collection(FirebaseEndPoints.globalCoursesCollection)
        .doc(globalCourseId)
        .collection(FirebaseEndPoints.globalWorkshopsCollection)
        .get();
  }

}

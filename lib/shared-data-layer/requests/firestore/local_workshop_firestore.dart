import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:roots_shared_lib/end_points/firebase_end_points.dart';

class LocalWorkshopFirestore {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getAllWorkshopsInALocalCourse({
    required String localCourseId,
  }) {
    return _firebaseFirestore
        .collection(FirebaseEndPoints.localCoursesCollection)
        .doc(localCourseId)
        .collection(FirebaseEndPoints.localWorkshopsCollection)
        .get();
  }

}

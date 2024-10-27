import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roots_shared_lib/end_points/firebase_end_points.dart';

class GlobalCoursesFirestore {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<QuerySnapshot<Map<String, dynamic>>> getAllGlobalCourses() {
    return _firebaseFirestore
        .collection(FirebaseEndPoints.globalCoursesCollection)
        .get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getGlobalCoursesFromIds(
      {required List<String> ids}) {
    return _firebaseFirestore
        .collection(FirebaseEndPoints.globalCoursesCollection)
        .where("id", whereIn: ids)
        .get();
  }
}

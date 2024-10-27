import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roots_shared_lib/end_points/firebase_end_points.dart';

class CampusesFirestore {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Map<String, dynamic>>> getAllCampuses() {
    return _firebaseFirestore
        .collection(FirebaseEndPoints.campusesCollection)
        .get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getCampusesFromCampusesIds(
      {required List<String> campusesIds}) {
    return _firebaseFirestore
        .collection(FirebaseEndPoints.campusesCollection)
        .where("id", whereIn: campusesIds)
        .get();
  }
}

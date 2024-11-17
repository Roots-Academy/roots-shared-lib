import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roots_shared_lib/end_points/firebase_end_points.dart';
import 'package:roots_shared_lib/models/campus.dart';

class SharedCampusesFirestore {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Map<String, dynamic>>> getAllCampuses() {
    return _firebaseFirestore
        .collection(FirebaseEndPoints.campusesCollection)
        .get();
  }

  Future<DocumentSnapshot> getSingleCampus({required String campusId}) {
    return _firebaseFirestore
        .collection(FirebaseEndPoints.campusesCollection)
        .doc(campusId)
        .get();
  }

  // Future<QuerySnapshot<Map<String, dynamic>>> getCampusesFromCampusesIds(
  //     {required List<String> campusesIds}) {
  //   return _firebaseFirestore
  //       .collection(FirebaseEndPoints.campusesCollection)
  //       .where("id", whereIn: campusesIds)
  //       .get();
  // }

    Future<void> updateInstructorIdsForCampus(
      {required String campusId, required List<String> instructorIds}) {
    return _firebaseFirestore
        .collection(FirebaseEndPoints.campusesCollection)
        .doc(campusId)
        .update({"instructorIds": instructorIds});
  }



}

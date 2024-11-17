import 'package:roots_shared_lib/models/campus.dart';

import '../requests/firestore/shared_campuses_firestore.dart';

class SharedCampusesRepo {
  final SharedCampusesFirestore _campusesFirestore = SharedCampusesFirestore();

  Future<List<Campus>> getAllCampuses() async {
    var snapshot = await _campusesFirestore.getAllCampuses();
    List<Campus> campuses = [];
    for (var doc in snapshot.docs) {
      campuses.add(Campus.fromMap(doc.data()));
    }
    return campuses;
  }

  Future<Campus> getSingleCampus({required String campusId}) async {
    var snapshot = await _campusesFirestore.getSingleCampus(campusId: campusId);

    return (Campus.fromMap(snapshot.data() as Map<String, dynamic>));
  }

  // Future<List<Campus>> getCampusesFromCampusesIds(
  //     {required List<String> campusIds}) async {
  //   var snapshot = await _campusesFirestore.getCampusesFromCampusesIds(
  //       campusesIds: campusIds);
  //   List<Campus> campuses = [];
  //   for (var doc in snapshot.docs) {
  //     campuses.add(Campus.fromMap(doc.data()));
  //   }
  //   return campuses;
  // }

  Future<void> updateInstructorIdsInCampus(
      {required String campusId, required List<String> instructorIds}) {
    return _campusesFirestore.updateInstructorIdsForCampus(
        campusId: campusId, instructorIds: instructorIds);
  }
}

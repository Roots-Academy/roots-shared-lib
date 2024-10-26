
import 'package:roots_shared_lib/models/campus.dart';

import '../requests/firestore/campuses_firestore.dart';

class CampusesRepo {
  final CampusesFirestore _campusesFirestore = CampusesFirestore();

  Future<List<Campus>> getAllCampuses() async {
    var snapshot = await _campusesFirestore.getAllCampuses();
    List<Campus> campuses = [];
    for (var doc in snapshot.docs) {
      campuses.add(Campus.fromMap(doc.data()));
    }
    return campuses;
  }

  Future<List<Campus>> getCampusesFromCampusesIds(
      {required List<String> campusIds}) async {
    var snapshot = await _campusesFirestore.getCampusesFromCampusesIds(
        campusesIds: campusIds);
    List<Campus> campuses = [];
    for (var doc in snapshot.docs) {
      campuses.add(Campus.fromMap(doc.data()));
    }
    return campuses;
  }
}

import 'package:roots_shared_lib/models/course/local/local_workshop.dart';
import '../requests/firestore/local_workshop_firestore.dart';

class LocalWorkshopsRepo {
  final LocalWorkshopFirestore _localWorkshopFirestore =
      LocalWorkshopFirestore();
  Future<List<LocalWorkshop>> getAllWorkshopsInALocalCourse(
      {required String localCourseId}) async {
    var snapshot = await _localWorkshopFirestore.getAllWorkshopsInALocalCourse(
        localCourseId: localCourseId);
    final List<LocalWorkshop> localWorkshops = [];
    for (var doc in snapshot.docs) {
      localWorkshops
          .add(LocalWorkshop.fromMap(doc.data() as Map<String, dynamic>));
    }
    return localWorkshops;
  }
}

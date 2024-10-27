
import 'package:roots_shared_lib/models/course/global/global_workshop.dart';

import '../requests/firestore/global_workshop_firestore.dart';

class GlobalWorkshopsRepo {
  final GlobalWorkshopFirestore _globalWorkshop = GlobalWorkshopFirestore();
  Future<List<GlobalWorkshop>> getAllWorkshopsInAGlobalCourse(
      {required String globalCourseId}) async {
    var snapshot = await _globalWorkshop.getAllGlobalWorkshopsInAGlobalCourse(
        globalCourseId: globalCourseId);
    final List<GlobalWorkshop> globalWorkshops = [];
    for (var doc in snapshot.docs) {
      globalWorkshops
          .add(GlobalWorkshop.fromMap(doc.data() as Map<String, dynamic>));
    }
    return globalWorkshops;
  }
}

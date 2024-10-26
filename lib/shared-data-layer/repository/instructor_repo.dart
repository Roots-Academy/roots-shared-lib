import 'package:roots_shared_lib/models/users/instructor.dart';

import '../requests/firestore/instructor_firestore.dart';

class InstructorRepo {
  final InstructorFirestore _instructorFirestore = InstructorFirestore();
  Future<void> setInstructor({required Instructor instructor}) {
    // GlobalCourse
    return _instructorFirestore.setInstructor(
        instructorId: instructor.id, docData: instructor.toMap());
  }

  Future<Instructor> getInstructor({required String instructorId}) async {
    var snapshot =
        await _instructorFirestore.getInstructor(instructorId: instructorId);
        
    return Instructor.fromMap(snapshot.data() as Map<String, dynamic>);
  }












  Stream<Instructor?> getInstructorStream(
      {required String instructorId}) async* {
    // Listen to the raw data stream
    await for (var rawData in _instructorFirestore.getInstructorRawDataStream(
        instructorId: instructorId)) {
      // Convert rawData into an Instructor object (you need to implement the conversion logic)

      var snapshot = rawData.data();
      if (snapshot == null) {
        yield null;
      } else {
        Instructor instructor =
            Instructor.fromMap(rawData.data() as Map<String, dynamic>);

        // Yield the instructor
        yield instructor;
      }
    }
  }










  // if (snapshot.data() == null) {
  //   return null;
  // }
  // return Instructor.fromMap(snapshot.data() as Map<String, dynamic>);
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roots_shared_lib/end_points/firebase_end_points.dart';

class InstructorFirestore {
  final CollectionReference _instructorCollectionReference = FirebaseFirestore
      .instance
      .collection(FirebaseEndPoints.instructorsCollection);

 

  Future<void> setInstructor(
      {required String instructorId, required Map<String, dynamic> docData}) {
    return _instructorCollectionReference.doc(instructorId).set(docData);
  }









  Stream<DocumentSnapshot<Object?>> getInstructorRawDataStream(
      {required String instructorId}) {
    return _instructorCollectionReference.doc(instructorId).snapshots();
  }


















  Future<DocumentSnapshot<Object?>> getInstructor(
      {required String instructorId}) {
    return _instructorCollectionReference.doc(instructorId).get();
  }
}

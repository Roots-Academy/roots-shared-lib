import 'package:firebase_database/firebase_database.dart';
import 'package:roots_shared_lib/end_points/firebase_end_points.dart';
import 'package:roots_shared_lib/models/course/global/question/answer.dart';
import 'package:roots_shared_lib/models/course/global/question/question.dart';
import 'package:roots_shared_lib/models/course/local/question_response.dart';
import 'package:uuid/uuid.dart';

class ClassroomRealtime {
  final FirebaseDatabase _firebaseDatabase = FirebaseDatabase.instance;

  Stream<DatabaseEvent> listenToAddedClassRoomQuestionResponses(
      {required String classroomId, required String questionId}) {
    return _firebaseDatabase
        .ref()
        .child(FirebaseEndPoints.classroomsCollection)
        .child(classroomId)
        .child(FirebaseEndPoints.questionsResponesCollection)
        .child(questionId)
        .onChildAdded;
  }

  Future<DataSnapshot> getAllQuestionResponsesForSingleQuestion(
      {required String classroomId, required String questionId}) {
    return _firebaseDatabase
        .ref()
        .child(FirebaseEndPoints.classroomsCollection)
        .child(classroomId)
        .child(FirebaseEndPoints.questionsResponesCollection)
        .child(questionId)
        .get();
  }

  Future<void> deleteAllQuestionResponsesForSingleQuestion(
      {required String classroomId, required String questionId}) {
    return _firebaseDatabase
        .ref()
        .child(FirebaseEndPoints.classroomsCollection)
        .child(classroomId)
        .child(FirebaseEndPoints.questionsResponesCollection)
        .child(questionId)
        .remove();
  }

  Future<void> setQuestionResponseInClassroom(
      {required String classroomId,
      required QuestionResponse questionResponse}) {
    return _firebaseDatabase
        .ref()
        .child(FirebaseEndPoints.classroomsCollection)
        .child(classroomId)
        .child(FirebaseEndPoints.questionsResponesCollection)
        .child(questionResponse.questionId)
        .child(questionResponse.id)
        .set(questionResponse.toMap());
  }

  Future<void> dummyAddResponseToClassRoom(
      {required String classroomId, required QuestionResponse response}) {
    return _firebaseDatabase
        .ref()
        .child(FirebaseEndPoints.classroomsCollection)
        .child(classroomId)
        .child(FirebaseEndPoints.questionsResponesCollection)
        .child(response.questionId)
        .child(response.id)
        .set(response.toMap());
  }

  Future<void> deleteQuestionResponseInClassRoom(
      {required String classroomId,
      required QuestionResponse questionResponse}) {
    return _firebaseDatabase
        .ref()
        .child(FirebaseEndPoints.classroomsCollection)
        .child(classroomId)
        .child(FirebaseEndPoints.questionsResponesCollection)
        .child(questionResponse.questionId)
        .child(questionResponse.id)
        .remove();
  }
}


import 'package:roots_shared_lib/end_points/firebase_end_points.dart';
import 'package:roots_shared_lib/models/course/global/question/answer.dart';
import 'package:roots_shared_lib/models/course/local/classroom.dart';
import 'package:roots_shared_lib/models/course/local/question_response.dart';

import '../general_crud_realtime.dart';
import '../requests/realtime/classroom_realtime.dart';

class ClassroomRepo {
  final GeneralCrudRealtime _generalCrudRealtime = GeneralCrudRealtime();
  final ClassroomRealtime _classroomRealtime = ClassroomRealtime();
  addNewClassroom({required Classroom classroom}) {
    return _generalCrudRealtime.generalSetdocInAppCollection(
        FirebaseEndPoints.classroomsCollection,
        classroom.localWorkshopId,
        classroom.toMap());
  }

  updateClassroomQuestionId(
      {required String classroomId, required String? newQuestionId}) {
    return _generalCrudRealtime.generalUpdatedocInAppCollection(
        collectionName: FirebaseEndPoints.classroomsCollection,
        docId: classroomId,
        docData: {"currentQuestionId": newQuestionId});
  }

  updateClassroomSelectedStudentId(
      {required String classroomId, required String newSelectedStudentId}) {
    return _generalCrudRealtime.generalUpdatedocInAppCollection(
        collectionName: FirebaseEndPoints.classroomsCollection,
        docId: classroomId,
        docData: {"selectedStudentId": newSelectedStudentId});
  }

  setQuestionResponseInClassroom({
    required String classroomId,
    required QuestionResponse newQuestionResponse,
  }) {
    return _classroomRealtime.setQuestionResponseInClassroom(
      classroomId: classroomId,
      questionResponse: newQuestionResponse,
    );
  }

  Future<List<QuestionResponse>> getAllQuestionResponsesForSingleQuestion(
      {required String classroomId, required String questionId}) async {
    var snapshot =
        await _classroomRealtime.getAllQuestionResponsesForSingleQuestion(
            classroomId: classroomId, questionId: questionId);
    List<QuestionResponse> responses = [];
    for (var data in snapshot.children) {
      responses.add(QuestionResponse.fromMap(
          (data.value as Map<dynamic, dynamic>).map((key, value) {
        return MapEntry(key.toString(), value);
      })));
    }
    return responses;
  }

  deleteQuestionResponseInClassRoom(
      {required String classroomId, required QuestionResponse response}) {
    return _classroomRealtime.deleteQuestionResponseInClassRoom(
        classroomId: classroomId, questionResponse: response);
  }

  Stream<QuestionResponse> listenToAddedClassRoomQuestionResponses({
    required String classroomId,
    required String newQuestionId,
  }) async* {
    var databaseEventStream =
        _classroomRealtime.listenToAddedClassRoomQuestionResponses(
            classroomId: classroomId, questionId: newQuestionId);

    await for (final event in databaseEventStream) {
      // Assuming event.snapshot.value contains the map for QuestionResponse
      print(event.snapshot.value);
      print(event.snapshot.children.first.value);
      print("printing");

      // Yield a new QuestionResponse from the map
      yield QuestionResponse.fromMap(
          (event.snapshot.value as Map<dynamic, dynamic>).map((key, value) {
        return MapEntry(key.toString(), value);
      }));
    }
  }
}

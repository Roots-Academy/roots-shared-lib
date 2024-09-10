

import 'package:roots_shared_lib/models/Academic/Classroom/Response.dart';
import 'package:roots_shared_lib/models/Academic/Classroom/StudentQuestion.dart';
import 'package:roots_shared_lib/models/Academic/Global/GlobalWorkshop.dart';
import 'package:roots_shared_lib/models/Academic/Local/LocalWorkshop.dart';

import '../../Users/User.dart';



class Classroom{

  DateTime openTime;
  bool open = false;

  // String campusID;
  List<RootsUser> availableStudents = [];
  List<RootsUser> studentsWhoAttended = [];
  LocalWorkshop localWorkshop;
  int? currentQuestion;
  List<StudentQuestion> studentQuestions = [];
  List<QuestionResponse> questionResponses = [];

  ///Describes whether to push the rating slides
  bool ended = false;





}
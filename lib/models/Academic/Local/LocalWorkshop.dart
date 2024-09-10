

import 'package:roots_shared_lib/models/Academic/Global/GlobalCourse.dart';
import 'package:roots_shared_lib/models/Academic/Global/GlobalWorkshop.dart';

import '../../Users/User.dart';

class LocalWorkshop{
  final String id;
  // final String globalCourseId;
  final GlobalWorkshop globalWorkshop;
  final String instructorId;
  final List<RootsUser> studentsWhoSignedUp;
  final String campusId;
  final String location;
}


import 'package:roots_shared_lib/models/Academic/Classroom/Response.dart';

import 'LocalWorkshop.dart';

class DeliveredLocalWorkshop extends LocalWorkshop{

  final DateTime deliveryDate;
  final List<Review> reviews;
  final Map<int, QuestionResponse> questionResponses;

}
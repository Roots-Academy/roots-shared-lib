import 'package:flutter/material.dart';


class StudentClassroomView extends StatefulWidget {
  const StudentClassroomView({super.key, required this.userId, required this.isGuest, required this.classroomId});

  final String userId;
  final String classroomId;
  final bool isGuest;

  @override
  State<StudentClassroomView> createState() => _StudentClassroomViewState();
}

class _StudentClassroomViewState extends State<StudentClassroomView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


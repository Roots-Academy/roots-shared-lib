import 'package:flutter/material.dart';


///NEEDS TO BE REMADE WITH CLEAN ARCHITECTURE
Padding questionScreenForStudent(AsyncSnapshot<Map<String, dynamic>> snapshot) {

  // Map<String,dynamic> lessonData = ((LessonService.globalLessonData[snapshot.data!["lessonID"][0]])[(snapshot.data!["lessonID"][1]).toString()]);
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        const Text("Question", style: TextStyle(fontSize: 17),),
        const Spacer(),
        // Text(lessonData["questions"][snapshot.data!["currentQuestion"]]["question"], style: const TextStyle(fontSize: 24), textAlign: TextAlign.center,),
        const Spacer(flex:1),
        // AnswerOptions(lessonData: lessonData, snapshot:  snapshot),
        const Spacer(flex: 2),

      ],
    ),
  );
}
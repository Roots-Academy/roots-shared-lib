//
// import 'package:flutter/material.dart';
//
// import '../widgets/RatingStar.dart';
//
// Widget rateLesson(String key) {
//   return Column(
//       children: [
//         const SizedBox(height: 30),
//         Text("Please rate the class"),
//         const Spacer(flex: 1),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Row(
//             children: [
//               ratingStar(1),
//               const Spacer(),
//               ratingStar(2),
//               const Spacer(),
//               ratingStar(3),
//               const Spacer(),
//               ratingStar(4),
//               const Spacer(),
//               ratingStar(5),
//             ],
//           ),
//         ),
//         const SizedBox(height: 20),
//         Text("Your rating will be anonymous", style: fadedText),
//         const SizedBox(height: 20),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
//           child: TextField(
//             controller: reviewController,
//             decoration: const InputDecoration(hintText: "Optional Feedback (Constructive and good appreciated!)"), minLines: 2, maxLines: 5,),
//         ),
//
//         const Spacer(flex: 2),
//         SimpleButton((){
//           if (rating == 0){
//             Helper.pushSnack("please select a rating!", context);
//           }else{
//             LessonService.rateLesson(key, rating, reviewController.text);
//             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MessageTemplate(message: "Thank you for the feedback! You may now close this tab.")));
//           }
//         }, "Done", 40, 120, tealColour),
//         const SizedBox(height: 10),
//       ]
//   );
// }
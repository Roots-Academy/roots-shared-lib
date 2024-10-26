//
// void sendStudentResponse(){
//   if (optionSelected != null || textAnswer != null) {
//     if(!answerSubmitted){
//       answerSubmitted = true;
//       if (optionSelected != null) {
//         Map ans = {
//           "user":"guest$guestID",
//           "value":optionSelected!
//         };
//         ClassroomNerve.changeClassroomState({
//           "responses": FieldValue.arrayUnion([ans])
//         });
//       }
//       else if (textAnswer != null) {
//         sendStudentOpenResponse();
//         controller.text = '';
//       }
//
//       Helper.pushSnack("Response submitted!", context);
//       setState(() {});
//     }else{
//       //making an exception for Open questions to submitted
//       if (textAnswer != null){
//         sendStudentOpenResponse();
//         controller.text = '';
//         Helper.pushSnack("Response submitted!", context); //repeated
//       }
//     }
//   }else{
//     Helper.pushSnack("Please answer the Question!", context);
//   }
// }

// void sendStudentOpenResponse() {
//   Map ans = {
//     "user":"guest$guestID",
//     "value":textAnswer!
//   };
//   ClassroomNerve.changeClassroomState({
//     "responses": FieldValue.arrayUnion([ans])
//   });
// }
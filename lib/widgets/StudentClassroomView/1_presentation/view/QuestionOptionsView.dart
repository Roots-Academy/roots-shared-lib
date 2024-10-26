import 'package:flutter/material.dart';

class AnswerOptions extends StatefulWidget {
  final Map<String, dynamic> lessonData;
  final AsyncSnapshot<Map<String, dynamic>> snapshot;
  const AnswerOptions({
    super.key, required this.lessonData, required this.snapshot
  });

  @override
  State<AnswerOptions> createState() => _AnswerOptionsState();
}

class _AnswerOptionsState extends State<AnswerOptions> {
  int? optionSelected;
  String? textAnswer;
  bool answerSubmitted = false;
  String? ques;

  String questionType = '';

  TextEditingController controller = TextEditingController();

  @override
  void initState() {

    super.initState();
    questionType = widget.lessonData["questions"][widget.snapshot.data!["currentQuestion"]]["questionType"];  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          (widget.lessonData["questions"][widget.snapshot.data!["currentQuestion"]]["questionType"] == "multipleChoice") // put in string
              ? Column(children: [
            for (String option in widget.lessonData["questions"][widget.snapshot.data!["currentQuestion"]]["options"])
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      if (!answerSubmitted){
                        List optionsT = widget.lessonData["questions"][widget.snapshot.data!["currentQuestion"]]["options"];
                        optionSelected = optionsT.indexOf(option);
                        setState(() {});
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey.withAlpha(60), width: 1),
                          // color: getColourOfOption(option),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 60,
                      child: Center(
                        child: Text(option),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,)
                ],
              ),

          ],) : TextField(maxLines: 5, onChanged: (val) => textAnswer = val, controller:  controller,),
          const SizedBox(height: 30),

          // (!answerSubmitted) ? submitAnswerButton(context) : (questionType == "Open") ? submitAnswerButton(context) :Text("Answer submitted!", style: fadedText,),
        ],
      ),
    );
  }
}
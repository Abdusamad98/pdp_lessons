import 'package:flutter/material.dart';
import 'package:pdp_lessons/main.dart';
import 'package:pdp_lessons/models/question_model.dart';
import 'package:pdp_lessons/models/subject_model.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key, required this.userAnswers, required this.subjectModel})
      : super(key: key);

  final List<String> userAnswers;
  final SubjectModel subjectModel;

  @override
  Widget build(BuildContext context) {
    int trueAnswers = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: ListView(
        children: [
          ...List.generate(subjectModel.questions.length, (index) {
            QuestionModel q = subjectModel.questions[index];
            if (q.trueAnswer == userAnswers[index]) {
              ++trueAnswers;
            }
            prefs!.setInt("math_result", trueAnswers);
            return ListTile(
              title: Text("Question - ${index + 1}"),
              subtitle: Text(
                  "Correct answer: ${subjectModel.questions[index].trueAnswer}"),
              trailing: q.trueAnswer == userAnswers[index]
                  ? Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
            );
          })
        ],
      ),
    );
  }
}

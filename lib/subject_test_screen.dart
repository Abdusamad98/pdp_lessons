import 'package:flutter/material.dart';
import 'package:pdp_lessons/models/question_model.dart';
import 'package:pdp_lessons/models/subject_model.dart';
import 'package:pdp_lessons/result_screen.dart';
import 'package:pdp_lessons/widgets/question_option.dart';
import 'package:pdp_lessons/widgets/questions_progress.dart';

class SubjectTestScreen extends StatefulWidget {
  const SubjectTestScreen({Key? key, required this.subjectModel})
      : super(key: key);

  final SubjectModel subjectModel;

  @override
  State<SubjectTestScreen> createState() => _SubjectTestScreenState();
}

class _SubjectTestScreenState extends State<SubjectTestScreen> {
  int currentIndex = 0;
  int currentSelection = 0;
  List<String> userAnswers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "${widget.subjectModel.subjectName} Test",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            QuestionProgress(
              currentCount: currentIndex + 1,
              totalCount: widget.subjectModel.questions.length,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  "Question - ${currentIndex + 1}",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  widget.subjectModel.questions[currentIndex].text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(height: 12),
            QuestionOption(
              onTap: () {
                setState(() {
                  currentSelection = 1;
                });
              },
              text: widget.subjectModel.questions[currentIndex].variant1,
              isSelected: currentSelection == 1,
            ),
            QuestionOption(
              onTap: () {
                setState(() {
                  currentSelection = 2;
                });
              },
              text: widget.subjectModel.questions[currentIndex].variant2,
              isSelected: currentSelection == 2,
            ),
            QuestionOption(
              onTap: () {
                setState(() {
                  currentSelection = 3;
                });
              },
              text: widget.subjectModel.questions[currentIndex].variant3,
              isSelected: currentSelection == 3,
            ),
            QuestionOption(
              onTap: () {
                setState(() {
                  currentSelection = 4;
                });
              },
              text: widget.subjectModel.questions[currentIndex].variant4,
              isSelected: currentSelection == 4,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  if (currentSelection == 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Select one of them"),
                      ),
                    );
                  } else {
                    if (widget.subjectModel.questions.length > (currentIndex + 1)) {
                      QuestionModel questionModel = widget.subjectModel.questions[currentIndex];

                      if (currentSelection == 1) {
                        userAnswers.add(questionModel.variant1);
                      } else if (currentSelection == 2) {
                        userAnswers.add(questionModel.variant2);
                      } else if (currentSelection == 3) {
                        userAnswers.add(questionModel.variant3);
                      } else if (currentSelection == 4) {
                        userAnswers.add(questionModel.variant4);
                      }
                      setState(() {
                        currentIndex++;
                        currentSelection = 0;
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Questions are over... Thank you for participation !!!")),
                      );


                      if (currentSelection != 0) {

                        QuestionModel questionModel = widget.subjectModel.questions[currentIndex];
                        if (currentSelection == 1) {
                          userAnswers.add(questionModel.variant1);
                        } else if (currentSelection == 2) {
                          userAnswers.add(questionModel.variant2);
                        } else if (currentSelection == 3) {
                          userAnswers.add(questionModel.variant3);
                        } else if (currentSelection == 4) {
                          userAnswers.add(questionModel.variant4);
                        }

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return ResultScreen(
                            userAnswers: userAnswers,
                            subjectModel: widget.subjectModel,
                          );
                        }));
                      }
                    }
                  }
                },
                child: Text("Next Question"))
          ],
        ),
      ),
    );
  }
}

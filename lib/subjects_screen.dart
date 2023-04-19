import 'package:flutter/material.dart';
import 'package:pdp_lessons/models/question_model.dart';
import 'package:pdp_lessons/models/subject_model.dart';
import 'package:pdp_lessons/subject_test_screen.dart';
import 'package:pdp_lessons/widgets/subject_view.dart';

class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        leading: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.person,
            color: Colors.grey,
          ),
        ),
        title: RichText(
          text: TextSpan(
            text: 'Quiz',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700),
            children: const <TextSpan>[
              TextSpan(
                text: 'App',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          ...List.generate(subjects.length, (index) {
            return SubjectView(
              subject: subjects[index],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SubjectTestScreen(
                    subjectModel: subjects[index],
                  );
                }));
              },
            );
          }),
        ],
      ),
    );
  }
}

List<SubjectModel> subjects = [
  SubjectModel(
    subjectName: "English",
    price: 100,
    duration: "1h",
    color: Colors.orangeAccent,
    id: 1,
    questions: [
      QuestionModel(
        text: "What ___ your name? 1",
        trueAnswer: "is",
        variant1: "are",
        variant2: "be",
        variant3: "is",
        variant4: "was",
      ),
      QuestionModel(
        text: "What ___ your name? 2",
        trueAnswer: "is",
        variant1: "are",
        variant2: "be",
        variant3: "is",
        variant4: "was",
      ),
      QuestionModel(
        text: "What ___ your name? 3",
        trueAnswer: "is",
        variant1: "are",
        variant2: "be",
        variant3: "is",
        variant4: "was",
      ),
    ],
  ),
  SubjectModel(
    subjectName: "Math",
    price: 200,
    duration: "1h 30m",
    color: Colors.lightBlue,
    id: 2,
    questions: [
      QuestionModel(
        text: "12 + 23 = ?",
        trueAnswer: "35",
        variant1: "30",
        variant2: "31",
        variant3: "32",
        variant4: "35",
      ),
      QuestionModel(
        text: "2 * 10 = ?",
        trueAnswer: "20",
        variant1: "10",
        variant2: "20",
        variant3: "30",
        variant4: "40",
      ),
    ],
  ),
  SubjectModel(
    subjectName: "ITS",
    price: 150,
    duration: "2h 15m",
    color: Colors.lightBlue,
    id: 3,
    questions: [
      QuestionModel(
        text: "What is a hardware?",
        trueAnswer: "Physical component of computer.",
        variant1: "All answers correct",
        variant2: "Some other variant",
        variant3: "Mental component of computer.",
        variant4: "Physical component of computer.",
      ),
    ],
  ),
];

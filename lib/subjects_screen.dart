import 'package:flutter/material.dart';
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
                  return SubjectTestScreen();
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
  ),
  SubjectModel(
    subjectName: "Math",
    price: 200,
    duration: "1h 30m",
    color: Colors.lightBlue,
    id: 2,
  ),
  SubjectModel(
    subjectName: "ITS",
    price: 150,
    duration: "2h 15m",
    color: Colors.lightBlue,
    id: 3,
  ),
];

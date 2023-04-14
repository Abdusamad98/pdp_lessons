import 'package:flutter/material.dart';
import 'package:pdp_lessons/models/subject_model.dart';

class SubjectView extends StatelessWidget {
  const SubjectView({
    Key? key,
    required this.subject,
    required this.onTap,
  }) : super(key: key);

  final SubjectModel subject;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          color: subject.color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subject.subjectName,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                subject.duration,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "\$${subject.price}",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

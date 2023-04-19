import 'package:flutter/material.dart';
import 'package:pdp_lessons/models/question_model.dart';

class SubjectModel {
  final String subjectName;
  final String duration;
  final int price;
  final Color color;
  final int id;
  final List<QuestionModel> questions;

  SubjectModel({
    required this.subjectName,
    required this.price,
    required this.duration,
    required this.color,
    required this.id,
    required this.questions,
  });
}

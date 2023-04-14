import 'package:flutter/material.dart';

class SubjectModel {
  final String subjectName;
  final String duration;
  final int price;
  final Color color;
  final int id;

  SubjectModel( {
    required this.subjectName,
    required this.price,
    required this.duration,
    required this.color,
    required this.id,
  });
}

import 'package:flutter/material.dart';


class SubjectTestScreen extends StatefulWidget {
  const SubjectTestScreen({Key? key}) : super(key: key);

  @override
  State<SubjectTestScreen> createState() => _SubjectTestScreenState();
}

class _SubjectTestScreenState extends State<SubjectTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Screen"),),
    );
  }
}

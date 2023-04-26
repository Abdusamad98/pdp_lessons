import 'package:flutter/material.dart';
import 'package:pdp_lessons/models/dictionary_model.dart';

class WordDetailScreen extends StatelessWidget {
  const WordDetailScreen({Key? key, required this.word}) : super(key: key);

  final DictionaryModel word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(word.givenWord),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              word.translation,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            Text(
              "Def: ${word.definitionOfWord}",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              word.createdDate,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> words = [
  "book",
  "pen",
  "computer",
  "desk",
];

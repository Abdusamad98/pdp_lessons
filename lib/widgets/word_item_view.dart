import 'package:flutter/material.dart';
import 'package:pdp_lessons/models/dictionary_model.dart';

class WordItemView extends StatelessWidget {
  const WordItemView({Key? key, required this.word, required this.onWordTap}) : super(key: key);

  final DictionaryModel word;
  final VoidCallback onWordTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onWordTap,
          title: Text(
            word.givenWord,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          trailing: Text(
            word.translation,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          height: 1.5,
          color: Colors.grey.shade300,
        )
      ],
    );
  }
}

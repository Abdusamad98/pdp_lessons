import 'package:flutter/material.dart';
import 'package:pdp_lessons/data/words_list.dart';
import 'package:pdp_lessons/models/dictionary_model.dart';

class AddingWordScreen extends StatefulWidget {
  const AddingWordScreen({Key? key}) : super(key: key);

  @override
  State<AddingWordScreen> createState() => _AddingWordScreenState();
}

class _AddingWordScreenState extends State<AddingWordScreen> {
  DictionaryMode? dictionaryMode = DictionaryMode.uzbEng;
  final TextEditingController wordController = TextEditingController();
  final TextEditingController translationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adding new word "),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            RadioListTile<DictionaryMode>(
              title: const Text('Uzbek - English'),
              value: DictionaryMode.uzbEng,
              groupValue: dictionaryMode,
              onChanged: (DictionaryMode? value) {
                setState(() {
                  dictionaryMode = value;
                });
              },
            ),
            RadioListTile<DictionaryMode>(
              title: const Text('English - Uzbek'),
              value: DictionaryMode.engUzb,
              groupValue: dictionaryMode,
              onChanged: (DictionaryMode? value) {
                setState(() {
                  dictionaryMode = value;
                });
              },
            ),
            TextField(
              controller: wordController,
              decoration: InputDecoration(
                  hintText: "Enter the word", border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              controller: translationController,
              decoration: InputDecoration(
                  hintText: "Enter the translation of the word",
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 30),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (wordController.text.isNotEmpty &&
                          translationController.text.isNotEmpty) {
                        if (dictionaryMode == DictionaryMode.uzbEng) {
                          uzbEngWords.add(
                            DictionaryModel(
                                createdDate: DateTime.now().toString(),
                                definitionOfWord: '',
                                givenWord: wordController.text,
                                translation: translationController.text),
                          );
                        } else {
                          engUzbWords.add(
                            DictionaryModel(
                                createdDate: DateTime.now().toString(),
                                definitionOfWord: '',
                                givenWord: wordController.text,
                                translation: translationController.text),
                          );
                        }
                        translationController.clear();
                        wordController.clear();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          "Fill all fileds",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )));
                      }
                    },
                    child: Text("Add word")))
          ],
        ),
      ),
    );
  }
}

enum DictionaryMode { engUzb, uzbEng }

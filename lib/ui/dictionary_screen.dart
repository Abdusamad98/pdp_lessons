import 'package:flutter/material.dart';
import 'package:pdp_lessons/data/words_list.dart';
import 'package:pdp_lessons/models/dictionary_model.dart';
import 'package:pdp_lessons/ui/word_detail_screen.dart';
import 'package:pdp_lessons/widgets/word_item_view.dart';

import '../utils/utils.dart';

class EngUzbScreen extends StatefulWidget {
  const EngUzbScreen({Key? key}) : super(key: key);

  @override
  State<EngUzbScreen> createState() => _EngUzbScreenState();
}

class _EngUzbScreenState extends State<EngUzbScreen> {
  List<DictionaryModel> allWords = [];

  final FocusNode focusNode = FocusNode();
  final TextEditingController controller = TextEditingController();

  bool isEngUzb = true;

  @override
  void initState() {
    loadWords();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: TextField(
                    controller: controller,
                    focusNode: focusNode,
                    cursorColor: Colors.black,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    onChanged: (quote) {
                      setState(() {
                        if (quote.isNotEmpty) {
                          allWords = getSearchResult(engUzbWords, quote);
                        } else {
                          allWords = engUzbWords;
                        }
                      });
                    },
                    decoration: getMyDecoration(() {
                      setState(() {
                        focusNode.unfocus();
                        controller.clear();
                        allWords = engUzbWords;
                      });
                    }),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isEngUzb = !isEngUzb;
                      loadWords();
                      focusNode.unfocus();
                      controller.clear();
                    });
                  },
                  icon: Icon(Icons.change_circle))
            ],
          ),
          Expanded(
            child: allWords.isNotEmpty
                ? ListView(
                    children: List.generate(allWords.length, (index) {
                      DictionaryModel word = allWords[index];
                      return WordItemView(
                        word: word,
                        onWordTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return WordDetailScreen(word: word);
                          }));
                        },
                      );
                    }),
                  )
                : Center(
                    child: Text("No Any Result..."),
                  ),
          ),
        ],
      ),
    ));
  }

  loadWords() {
    allWords = isEngUzb ? engUzbWords : uzbEngWords;
    allWords.sort((a, b) => a.givenWord.compareTo(b.givenWord));
  }
}

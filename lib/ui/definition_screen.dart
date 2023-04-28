import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pdp_lessons/utils/utils.dart';

class DefinitionScreen extends StatefulWidget {
  const DefinitionScreen({Key? key}) : super(key: key);

  @override
  State<DefinitionScreen> createState() => _DefinitionScreenState();
}

class _DefinitionScreenState extends State<DefinitionScreen> {
  final FocusNode focusNode = FocusNode();
  final TextEditingController controller = TextEditingController();
  String definitionText = "No Meaning Yet...";
  String trancriptionOfTheWord = "--";
  String audioUrl = "";

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: TextField(
                      controller: controller,
                      focusNode: focusNode,
                      cursorColor: Colors.black,
                      onSubmitted: (word) async {
                        if (word.isNotEmpty) {
                          setState(() {
                            isLoading = true;
                          });
                          Response response = await getDefinitionOfWord(word);
                          print("DEFINITION: ${response.data}");
                          audioUrl = response.data[0]["phonetics"][0]["audio"];
                          setState(() {
                            isLoading = false;
                            definitionText = response.data[0]["meanings"][0]["definitions"][0]["definition"];
                            trancriptionOfTheWord = response.data[0]["phonetic"];
                          });
                        }
                      },
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      decoration: getMyDecoration(() {
                        setState(() {
                          focusNode.unfocus();
                          controller.clear();
                          definitionText = "No Meaning Yet...";
                          trancriptionOfTheWord = "--";
                        });
                      }),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Center(
                    child: isLoading
                        ? CircularProgressIndicator()
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    if (audioUrl.isNotEmpty) {
                                      playSound(audioUrl);
                                    }
                                  },
                                  icon: Icon(
                                    Icons.play_circle_filled_outlined,
                                    color: Colors.indigo,
                                    size: 40,
                                  )),
                              Text(
                                trancriptionOfTheWord,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  definitionText,
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          )))
          ],
        ),
      ),
    );
  }

  Future<Response> getDefinitionOfWord(String word) async {
    Dio dio = Dio();
    final Response response =
        await dio.get("https://api.dictionaryapi.dev/api/v2/entries/en/$word");
    return response;
  }

  playSound(String url) async {
    AudioPlayer player = AudioPlayer();
    player.setSourceUrl(url);
    player.play(UrlSource(url));
  }
}

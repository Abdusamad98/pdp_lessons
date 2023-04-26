import 'package:flutter/material.dart';
import 'package:pdp_lessons/ui/adding_word_screen.dart';

import 'ui/dictionary_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> screens = [];

  @override
  void initState() {
    screens.add(EngUzbScreen());
    screens.add(AddingWordScreen());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          // 0, 1, 2
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.language), label: "Dictionary"),
          // BottomNavigationBarItem(icon: Icon(Icons.language), label: "Uzb-Eng"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Add Word"),
        ],
      ),
    );
  }
}

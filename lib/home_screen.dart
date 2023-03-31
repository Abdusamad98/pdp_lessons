import 'package:flutter/material.dart';
import 'package:pdp_lessons/music_player_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13152E),
      appBar: AppBar(
        backgroundColor: Color(0xFF13152E),
        title: Text("My Songs"),
      ),
      body: ListView(
        children: [
          ...List.generate(100, (index) {
            return ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.music_off,
                  color: Colors.yellow,
                ),
                onPressed: () {},
              ),
              title: Text(
                "Name of the song",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Author name",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MusicPlayerScreen();
                    },
                  ),
                );
              },
            );
          })
        ],
      ),
    );
  }
}

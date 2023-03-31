import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({Key? key}) : super(key: key);

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  final player = AudioPlayer();

  _init() async {
    await player.setSource(AssetSource("musics/ringtone.mp3"));
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13152E),
      appBar: AppBar(
        backgroundColor: Color(0xFF13152E),
        centerTitle: true,
        title: Text("Song"),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                Icons.music_off_rounded,
                color: Colors.amber,
                size: MediaQuery.of(context).size.height / 3,
              ),
            ),
            SizedBox(height: 24),
            Text(
              "Name of the song",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            Text(
              "Close eyes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "1:30",
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  child: Slider(
                    activeColor: Colors.white,
                    thumbColor: Colors.white,
                    value: 12,
                    onChanged: (double value) {},
                    max: 100,
                    divisions: 100,
                  ),
                ),
                Text(
                  "2:50",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.repeat,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_double_arrow_left,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    player.play(AssetSource("musics/ringtone.mp3"));
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_double_arrow_right,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shuffle_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

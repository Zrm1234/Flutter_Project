import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void tash(int num) {
    final player = AudioPlayer();
    player.play(AssetSource("assets_music-$num.mp3"));
  }

  @override
  Widget build(BuildContext context) {
    Expanded Mybuttoms(int numS, Color colorS, String nameS) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: Size(410, 50)),
              onPressed: () {
                tash(numS);
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.music_note,
                      color: colorS,
                      size: 27,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    nameS,
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                    ),
                  ),
                ],
              )),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Nagamat",
            style: TextStyle(
              fontSize: 27,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Mybuttoms(1, Colors.white, "Song 1"),
            Mybuttoms(2, Colors.white, "Song 2"),
            Mybuttoms(3, Colors.white, "Song 3"),
            Mybuttoms(4, Colors.white, "Song 4"),
            Mybuttoms(5, Colors.white, "Song 5"),
            Mybuttoms(6, Colors.white, "Song 6"),
          ],
        ),
      ),
    );
  }
}

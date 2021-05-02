import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophonApp());
}

class XylophonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playAudio(int audioNumber) {
      AudioPlayer(playerId: 'note$audioNumber.wav');
    }

    Expanded buildWidget(int audioNumber) {
      return Expanded(
        child: MaterialButton(
          onPressed: () {
            playAudio(audioNumber);
          },
          color: Colors.red,
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildWidget(1),
            buildWidget(2),
            buildWidget(3),
            buildWidget(4),
            buildWidget(5),
            buildWidget(6),
            buildWidget(7),
          ],
        ),
      ),
    );
  }
}

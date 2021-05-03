import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophonApp());
}

class XylophonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playAudio(int audioNumber) {
      final player = AudioCache();
      player.play('note$audioNumber.wav');
    }

    Expanded buildWidget(int audioNumber, Color color) {
      return Expanded(
        child: MaterialButton(
          enableFeedback: false,
          onPressed: () {
            playAudio(audioNumber);
          },
          color: color,
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildWidget(1, Colors.red),
              buildWidget(2, Colors.orange),
              buildWidget(3, Colors.yellow),
              buildWidget(4, Colors.green),
              buildWidget(5, Colors.lightBlue),
              buildWidget(6, Colors.blue[800]),
              buildWidget(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

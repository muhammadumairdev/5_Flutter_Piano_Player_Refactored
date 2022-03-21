import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(Piano_Player());

class Piano_Player extends StatelessWidget {
  static AudioCache player = AudioCache();

  void soundPlayer(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildkey({color, soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          soundPlayer(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color: Colors.blue, soundNumber: 1),
                buildkey(color: Colors.purple, soundNumber: 2),
                buildkey(color: Colors.cyanAccent, soundNumber: 3),
                buildkey(color: Colors.redAccent, soundNumber: 4),
                buildkey(color: Colors.teal, soundNumber: 5),
                buildkey(color: Colors.amber, soundNumber: 6),
                buildkey(color: Colors.green, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

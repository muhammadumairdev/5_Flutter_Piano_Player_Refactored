import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(Piano_Player());

class Piano_Player extends StatelessWidget {
  static AudioCache player = AudioCache();

  void soundPlayer(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
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
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    //color: Colors.amber,
                    onPressed: () {
                      soundPlayer(1);
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple,
                      ),
                      onPressed: () {
                        soundPlayer(2);
                      },
                      child: Text('')),
                ),
                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.cyanAccent,
                      ),
                      onPressed: () {
                        soundPlayer(3);
                      },
                      child: Text('')),
                ),
                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        soundPlayer(4);
                      },
                      child: Text('')),
                ),
                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.teal,
                      ),
                      onPressed: () {
                        soundPlayer(5);
                      },
                      child: Text('')),
                ),
                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        soundPlayer(6);
                      },
                      child: Text('')),
                ),
                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        soundPlayer(7);
                      },
                      child: Text('')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber)
  {
    final player = AudioPlayer();
    player.play(
        AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(int soundNumber,Color color)
  {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(""),
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1,Colors.red),
                buildKey(2,Colors.orange),
                buildKey(3,Colors.yellow),
                buildKey(4,Colors.green),
                buildKey(5,Colors.green.shade900),
                buildKey(6,Colors.blueAccent),
                buildKey(7,Colors.purple),


              ]),
        ),
      ),
    );
  }
}

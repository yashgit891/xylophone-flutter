import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playaudio(int soundnumber){
    final player=AudioCache();
    player.play('note$soundnumber.wav');
  }
  Expanded buildkey({Color color,int soundnumber})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playaudio(soundnumber);
        },
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildkey(color: Colors.red,soundnumber: 1),
              buildkey(color: Colors.blue,soundnumber: 2),
              buildkey(color: Colors.green,soundnumber: 3),
              buildkey(color: Colors.yellow,soundnumber: 4),
              buildkey(color: Colors.orange,soundnumber: 5),
              buildkey(color: Colors.purple,soundnumber: 6),
              buildkey(color: Colors.pink,soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
void play(file) {
  final player = AudioCache();
  player.play(file);
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home());
  }
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(width);
    print(height);
    return Scaffold(
      body: SafeArea(
//        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                play("note1.wav");
              },
              child: Container(
                child: Center(
                  child: Text(
                    "VIOLET",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                color: Colors.deepPurpleAccent[400],
                width: width - 35,
                height: (height / 7) - 4,
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  play("note2.wav");
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "INDIGO",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  color: Colors.indigo,
                  width: width - 35,
                  height: (height / 7) - 4,
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  play("note3.wav");
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "BLUE",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  color: Colors.blue,
                  width: width - 35,
                  height: (height / 7) - 4,
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  play("note4.wav");
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "GREEN",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  color: Colors.green,
                  width: width - 35,
                  height: (height / 7) - 4,
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  play("note5.wav");
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "YELLOW",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  color: Colors.yellow,
                  width: width - 35,
                  height: (height / 7) - 4,
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  play("note6.wav");
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "ORANGE",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  color: Colors.orangeAccent,
                  width: width - 35,
                  height: (height / 7) - 4,
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  play("note7.wav");
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "RED",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  color: Colors.red,
                  width: double.infinity,
                  height: (height / 7) - 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

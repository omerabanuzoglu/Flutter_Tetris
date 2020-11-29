import 'package:flutter/material.dart';
import 'package:tetris_game/game.dart';
import 'package:tetris_game/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tetris",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Menu(),
    );
  }
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () async {
            timer.cancel();
            Navigator.pop(context);
          },
        ),
        title: Text("Başla"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      backgroundColor: Colors.teal[50],
      body: Game(),
    );
  }
}

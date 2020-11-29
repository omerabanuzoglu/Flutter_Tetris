import 'package:flutter/material.dart';
import 'package:tetris_game/main.dart';
import 'package:tetris_game/menu_button.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  void onPlayClicked() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GameScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tetris",
            style: TextStyle(
                fontSize: 70,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      color: Colors.black,
                      blurRadius: 8.0,
                      offset: Offset(2.0, 2.0))
                ]),
          ),
          MenuButton(onPlayClicked),
        ],
      ),
    );
  }
}

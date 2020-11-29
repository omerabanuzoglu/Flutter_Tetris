import 'package:flutter/material.dart';
import 'package:tetris_game/action_button.dart';
import 'game.dart';

class UserInput extends StatelessWidget {
  final Function onActionButtonPressed;
  UserInput(this.onActionButtonPressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            ActionButton(
              onActionButtonPressed,
              Icon(
                Icons.rotate_left,
                color: Colors.white,
                size: 40,
              ),
              LastButtonPressed.ROTATE_LEFT,
            ),
            ActionButton(
              onActionButtonPressed,
              Icon(
                Icons.rotate_right,
                color: Colors.white,
                size: 40,
              ),
              LastButtonPressed.ROTATE_RIGHT,
            ),
          ],
        ),
        Row(
          children: [
            ActionButton(
              onActionButtonPressed,
              Icon(
                Icons.arrow_left,
                color: Colors.white,
                size: 40,
              ),
              LastButtonPressed.LEFT,
            ),
            ActionButton(
              onActionButtonPressed,
              Icon(
                Icons.arrow_right,
                color: Colors.white,
                size: 40,
              ),
              LastButtonPressed.RIGHT,
            ),
          ],
        ),
      ],
    );
  }
}

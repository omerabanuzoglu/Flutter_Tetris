import 'package:flutter/material.dart';
import 'package:tetris_game/game.dart';

// ignore: must_be_immutable
class ActionButton extends StatelessWidget {
  Function onClickedFunction;
  Icon buttonIcon;
  LastButtonPressed nextAction;

  ActionButton(this.onClickedFunction, this.buttonIcon, this.nextAction);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: RaisedButton(
          onPressed: () {
            onClickedFunction(nextAction);
          },
          color: Colors.blueGrey,
          child: buttonIcon,
        ),
      ),
    );
  }
}

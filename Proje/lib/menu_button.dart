import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuButton extends StatelessWidget {
  Function onClickedFunction;
  MenuButton(this.onClickedFunction);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 60,
      minWidth: 200,
      child: RaisedButton(
        onPressed: () {
          onClickedFunction();
        },
        color: Colors.blueGrey,
        elevation: 40,
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tetris_game/blocks/Iblock.dart';
import 'package:tetris_game/blocks/block.dart';
import 'package:tetris_game/blocks/jBlock.dart';
import 'package:tetris_game/blocks/lBlock.dart';
import 'package:tetris_game/blocks/sBlock.dart';
import 'package:tetris_game/blocks/sqBlock.dart';
import 'package:tetris_game/blocks/tBlock.dart';
import 'package:tetris_game/blocks/zBlock.dart';
import 'package:tetris_game/game.dart';

// ignore: missing_return
Block getRandomBlock() {
  int randomNr = Random().nextInt(7);
  switch (randomNr) {
    case 0:
      return IBlock(BOARD_WIDTH);
    case 1:
      return JBlock(BOARD_WIDTH);
    case 2:
      return SBlock(BOARD_WIDTH);
    case 3:
      return SquareBlock(BOARD_WIDTH);
    case 4:
      return TBlock(BOARD_WIDTH);
    case 5:
      return ZBlock(BOARD_WIDTH);
    case 6:
      return LBlock(BOARD_WIDTH);
  }
}

Widget getTetrisPoint(Color color) {
  return Container(
    width: POINT_SIZE,
    height: POINT_SIZE,
    decoration: new BoxDecoration(
      color: color,
      shape: BoxShape.rectangle,
    ),
  );
}

Widget getGameOverText(int score) {
  return Center(
    child: Text(
      "Oyun Bitti \nSkorunuz: $score",
      style: TextStyle(
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
        color: Colors.red,
        shadows: [
          Shadow(blurRadius: 3.0, offset: Offset(2.0, 2.0)),
        ],
      ),
    ),
  );
}

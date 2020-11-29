import 'package:flutter/material.dart';
import 'package:tetris_game/blocks/block.dart';
import 'package:tetris_game/blocks/point.dart';

class SquareBlock extends Block {
  SquareBlock(int width) {
    points[0] = Point((width / 2 - 0).floor(), -1);
    points[1] = Point((width / 2 + 1).floor(), -1);
    points[2] = Point((width / 2 - 0).floor(), 0);
    points[3] = Point((width / 2 + 1).floor(), 0);
    rotationCenter = points[1];
    color = Colors.blue;
  }
}

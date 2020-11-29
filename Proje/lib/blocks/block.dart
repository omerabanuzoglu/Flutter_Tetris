import 'package:flutter/material.dart';
import 'package:tetris_game/game.dart';
import 'package:tetris_game/blocks/point.dart';

class Block {
  List<Point> points = List<Point>(4);
  Point rotationCenter;
  Color color;

  bool canMoveToSide(int moveAmt) {
    bool retVal = true;
    points.forEach((point) {
      if (point.x + moveAmt < 0 || point.x + moveAmt >= BOARD_WIDTH) {
        retVal = false;
      }
    });
  }

  void move(MoveDir dir) {
    switch (dir) {
      case MoveDir.LEFT:
        if (canMoveToSide(-1)) {
          points.forEach((p) => p.x -= 1);
        }
        break;
      case MoveDir.RIGHT:
        if (canMoveToSide(1)) {
          points.forEach((p) => p.y += 1);
        }
        break;
      case MoveDir.DOWN:
        points.forEach((p) => p.y += 1);
        break;
    }
  }

  bool allPointsInside() {
    bool retVal = true;
    points.forEach((point) {
      if (point.x < 0 || point.x >= BOARD_WIDTH) {
        retVal = false;
      }
    });

    return retVal;
  }

  void rotateRight() {
    points.forEach((point) {
      int x = point.x;
      point.x = rotationCenter.x - point.y + rotationCenter.y;
      point.y = rotationCenter.y + x - rotationCenter.x;
    });
    if (allPointsInside() == false) {
      rotateLeft();
    }
  }

  void rotateLeft() {
    points.forEach((point) {
      int x = point.x;
      point.x = rotationCenter.x + point.y - rotationCenter.y;
      point.y = rotationCenter.y - x + rotationCenter.x;
    });
    if (allPointsInside() == false) {
      rotateRight();
    }
  }

  bool isAtBottom() {
    int lowersPoint = 0;

    points.forEach((point) {
      if (point.y > lowersPoint) {
        lowersPoint = point.y;
      }
    });

    if (lowersPoint >= BOARD_HEIGHT - 1) {
      return true;
    } else {
      return false;
    }
  }
}

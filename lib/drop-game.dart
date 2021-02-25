import 'package:flutter/material.dart';
import 'dart:ui';
// import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';

class DropGame extends Game {
  Size screenSize;
  double xPos, yPos;
  final double radius = 20;

  @override
  void render(Canvas canvas) {
    screenSize = MediaQueryData.fromWindow(window).size;
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Colors.red; //.(0xff576574);
    canvas.drawRect(bgRect, bgPaint);
    xPos = screenSize.width / 2;
    yPos = screenSize.height / 2;
    Paint circlePaint = Paint();
    circlePaint.color = Colors.black;
    canvas.drawCircle(Offset(xPos, yPos), radius, circlePaint);
  }

  @override
  void update(double t) {
    // TODO: implement update
  }
  void resize(Size size) {
    screenSize = size;
  }
}

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:demo_drop/drop-game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Flame.util.fullScreen();
  // await Flame.util.setOrientation(DeviceOrientation.portraitUp);
  DropGame game = DropGame();
  runApp(GameWidget(game: game));
}

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';

import 'game.dart';
import 'overlays/main_menu.dart';

void main() async {
  /// Hive init
  await Hive.initFlutter();
  await Hive.openBox('soundSettings');

  Flame.device.setPortrait();

  runApp(
    GameWidget<TextGame>.controlled(
      gameFactory: TextGame.new,
      overlayBuilderMap: {
        'MainMenu': (_, game) => MainMenu(game: game),
        // 'GameOverMenu': (_, game) => GameOverMenu(game: game),
        // 'PauseMenu': (_, game) => PauseMenu(game: game),
        // 'SettingsMenu': (_, game) => SoundSettings(game: game),
      },
    ),
  );
}
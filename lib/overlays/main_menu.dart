import 'package:flutter/material.dart';
import 'package:text_game/game.dart';

class MainMenu extends StatelessWidget {
  final TextGame game;

  const MainMenu({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: Text('Main Menu'),
    );
  }
}
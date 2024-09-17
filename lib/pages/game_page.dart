import 'package:dice_game/components/game_template.dart';
import 'package:dice_game/components/gradient.dart';
import 'package:dice_game/model/game_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<GameModel>(
          builder: (context, diceValue, child) => MyGradient(
                myWidget: GameTemplate(
                  image: diceValue.myDice,
                ),
              )),
    );
  }
}

import 'package:dice_game/model/dice_model.dart';
import 'package:dice_game/model/game_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GameTemplate extends StatelessWidget {
  final Dice image;
  const GameTemplate({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: image.imagePath,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
          ),
          onPressed: context.read<GameModel>().rollDice,
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}

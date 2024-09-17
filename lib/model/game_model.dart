import 'package:dice_game/model/dice_model.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class GameModel extends ChangeNotifier {
  int _currentNumber = 1;

  int get currentNumber => _currentNumber;
  Dice myDice = Dice(
    imagePath: Image.asset(
      'assets/images/dice-1.png',
      width: 200,
    ),
  );

  void rollDice() {
    _currentNumber =
        Random().nextInt(6) + 1; // Dice numbers are between 1 and 6
    myDice = Dice(
      imagePath: Image.asset(
        'assets/images/dice-$_currentNumber.png',
        width: 200,
      ),
    );
    notifyListeners();
  }
}

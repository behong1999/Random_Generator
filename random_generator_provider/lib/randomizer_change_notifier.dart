import 'dart:math';

import 'package:flutter/material.dart';

class RandomizerChangeNotifier extends ChangeNotifier {
  int min = 0;
  int max = 0;
  int? _randomNumber;
  final ran = Random();

  int? get getRandomNumber => _randomNumber;

  void reset() {
    _randomNumber = null;
    notifyListeners();
  }

  void generateRandomNumber() {
    _randomNumber = min + ran.nextInt(max + 1 - min);
    notifyListeners();
  }
}

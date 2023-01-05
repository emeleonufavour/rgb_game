import 'dart:math';

import 'package:flutter/material.dart';

class ColourService extends ChangeNotifier {
  double _alpha = 255.0;
  double _currentRedValue = 50.0;
  double _currentBlueValue = 20.0;
  double _currentGreenValue = 20.0;

  get alpha => _alpha;
  get currentRedValue => _currentRedValue;
  get currentBlueValue => _currentBlueValue;
  get currentGreenValue => _currentGreenValue;

  set setCurrentRedValue(value) {
    _currentRedValue = value;
    notifyListeners();
  }

  set setCurrentBlueValue(value) {
    _currentBlueValue = value;
    notifyListeners();
  }

  set setCurrentGreenValue(value) {
    _currentGreenValue = value;
    notifyListeners();
  }

  set setAlpha(value) {
    _alpha = value;
    notifyListeners();
  }
}

class RandomColour extends ChangeNotifier {
  static Random random = Random();
  int _randomAlpha = random.nextInt(255);
  int _randomRed = random.nextInt(255);
  int _randomGreen = random.nextInt(255);
  int _randomBlue = random.nextInt(255);

  get randomAlpha => _randomAlpha;
  get randomRed => _randomRed;
  get randomGreen => _randomGreen;
  get randomBlue => _randomBlue;

  set setRandomAlpha(value) {
    _randomAlpha = value;
    notifyListeners();
  }

  set setRandomRed(value) {
    _randomRed = value;
    notifyListeners();
  }

  set setRandomGreen(value) {
    _randomGreen = value;
    notifyListeners();
  }

  set setRandomBlue(value) {
    _randomBlue = value;
    notifyListeners();
  }

  Color getColor() {
    return Color.fromARGB(_randomAlpha, _randomRed, _randomGreen, _randomBlue);
  }
}

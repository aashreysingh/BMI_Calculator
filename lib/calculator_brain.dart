import 'dart:math';

import 'package:flutter/cupertino.dart';

class BMICalculatorBrain {
  String result;
  double _bmiNumber;
  String bmiRange;
  String interpretation;

  int height, weight;

  BMICalculatorBrain({@required this.height, @required this.weight});

  String getbmiNum() {
    _bmiNumber = weight / pow((height / 100), 2);
    return _bmiNumber.toStringAsFixed(1);
  }

  String getbmiResult() {
    if (_bmiNumber < 18.5) {
      result = 'Underweight';
    } else if (_bmiNumber < 25) {
      result = 'Normal';
    } else if (_bmiNumber < 30) {
      result = 'Overweight';
    } else {
      result = 'Obese';
    }
    return result;
  }

  String getbmiRange() {
    if (_bmiNumber < 18.5) {
      bmiRange = '< 18.5';
    } else if (_bmiNumber < 25) {
      bmiRange = '18.5 - 25';
    } else if (_bmiNumber < 30) {
      bmiRange = '25 - 30';
    } else {
      bmiRange = '>= 30';
    }
    return bmiRange;
  }

  String getInterpretation() {
    if (_bmiNumber < 18.5) {
      interpretation =
          'Risk of developing problems such as nutritional deficiency and osteoporosis';
    } else if (_bmiNumber < 25) {
      interpretation = 'You have a normal body weight. Good Job!';
    } else if (_bmiNumber < 30) {
      interpretation =
          'Moderate risk of developing heart disease, high blood pressure, stroke, diabetes';
    } else {
      interpretation =
          'High risk of developing heart disease, high blood pressure, stroke, diabetes';
    }
    return interpretation;
  }
}

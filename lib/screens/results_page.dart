import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String bmi;
  final String bmiRange;
  final String interpretation;

  ResultPage({this.bmi, this.result, this.bmiRange, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'Your Result',
                style: headText,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.all(20),
              child: ReusableCard(
                color: cardDefaultColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      result.toUpperCase(),
                      style: statusText,
                    ),
                    Text(
                      bmi,
                      style: bmIndex,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '$result BMI range:',
                          style: paraText,
                        ),
                        Text(
                          '$bmiRange kg/m2',
                          style: ansText,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        interpretation,
                        style: ansText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE YOUR BMI',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

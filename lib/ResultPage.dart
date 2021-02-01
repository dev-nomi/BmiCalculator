import 'package:bmi_calculator_flutter/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'ReusableCard.dart';
import 'BottomButton.dart';
import 'BMIBrain.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String statementText;

  ResultPage({this.bmiResult, this.resultText, this.statementText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Center(
                        child: Text(
                          resultText,
                          style: TextStyle(
                            color: Color(0xFF22e67b),
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          bmiResult,
                          style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          statementText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BottomButton(
              onPress: () {
                Navigator.pop(context);
              },
              buttonText: 'RE-CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}

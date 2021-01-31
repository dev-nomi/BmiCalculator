import 'package:bmi_calculator_flutter/Constants.dart';
import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'BottomButton.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Text('Your Result'),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
              ),
            ),
            BottomButton(
              onPress: (){
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

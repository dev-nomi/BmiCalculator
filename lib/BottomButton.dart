import 'package:flutter/material.dart';
import 'ResultPage.dart';
import 'Constants.dart';
class BottomButton extends StatelessWidget {
  final Function onPress;
  final String buttonText;
  BottomButton({this.onPress,this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              buttonText,
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomCardColor,
      ),
    );
  }
}

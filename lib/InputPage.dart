import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'ReusableIcon.dart';


const activeCardColor = Color(0xFF1d1f33);
const inacticeCardColor =Color(0xFF111428);
const bottomCardColor = Color(0xFFeb1555);
const bottomContainerHeight = 80.0;
enum Gender{
 MALE,
 FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor=inacticeCardColor;
  Color femaleCardColor=inacticeCardColor;
  //1 for male and 2 for female
  void updateColor(Gender genderType){
    if(genderType==Gender.MALE){
      if(maleCardColor==inacticeCardColor){
        maleCardColor=activeCardColor;
        femaleCardColor=inacticeCardColor;
      }else{
        maleCardColor=inacticeCardColor;
      }
    }
    if(genderType==Gender.FEMALE){
      if(femaleCardColor==inacticeCardColor){
        femaleCardColor=activeCardColor;
        maleCardColor=inacticeCardColor;
      }else{
        femaleCardColor=inacticeCardColor;
      }
    }
  }//updateColor
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(Gender.MALE);
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColor,
                        cardChild: ReusableIcon(
                          icon: FontAwesomeIcons.mars,
                          iconName: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(Gender.FEMALE);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: ReusableIcon(
                          icon: FontAwesomeIcons.venus,
                          iconName: 'Female',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
              color: bottomCardColor,
            ),
          ],
        ),
      ),
    );
  }
}





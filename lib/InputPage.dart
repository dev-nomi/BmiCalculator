import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const cardColor = Color(0xFF1d1f33);
const bottomCardColor = Color(0xFFeb1555);

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(
                      colour: cardColor,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.mars,
                        iconName: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: cardColor,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.venus,
                        iconName: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: cardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: cardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: cardColor,
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

class ReusableIcon extends StatelessWidget {
  final IconData icon;
  final String iconName;

  ReusableIcon({this.iconName, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          iconName,
          style: TextStyle(
            fontSize: 15.0,
            color: Color(0xFF9a9ba4),
          ),
        ),
      ],
    );
  }
}

//custom widget
class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  } //build
} //ReusableCard

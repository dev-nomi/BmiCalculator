import 'package:flutter/material.dart';
import 'Constants.dart';

//custom widget
class ReusableIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  ReusableIcon({this.label, this.icon});

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
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}//reusableIcon
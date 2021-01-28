import 'package:flutter/material.dart';
//custom widget
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
}//reusableIcon
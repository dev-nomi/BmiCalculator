import 'package:flutter/material.dart';
import 'InputPage.dart';
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0a0d22),//custom color
        scaffoldBackgroundColor: Color(0xFF0a0d22),//custom color
      ),
      home: InputPage(),
    );
  }
}
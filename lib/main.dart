import 'package:bmi/screens/chart.dart';
import 'package:bmi/screens/hey_clyncer.dart';
import 'package:bmi/screens/input.dart';
import 'package:flutter/material.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Chart(),
    );
  }


}
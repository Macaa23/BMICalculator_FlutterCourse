import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF908fe7),
        scaffoldBackgroundColor: Color(0xFFc4ecff),
        accentColor: Color(0xFF00BFA5),
      ),
      home: InputPage(),
    );
  }
}

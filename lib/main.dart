import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6BE5D6),
        accentColor: Color(0xFF00BFA5),
      ),
      home: InputPage(),
    );
  }
}

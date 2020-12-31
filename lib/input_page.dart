import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/CardContent.dart';
import 'package:bmi_calculator/RoundedCard.dart';

const List<Color> gradientColors = [
  const Color(0x8Ac4d0ff),
  const Color(0x73908fe7),
  const Color(0x617a6ddd),
];

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                RoundedCard(
                  colors: gradientColors,
                  cardContent: CardContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'WOMAN',
                  ),
                ),
                RoundedCard(
                  colors: gradientColors,
                  cardContent: CardContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ],
            ),
          ),
          RoundedCard(colors: gradientColors),
          Expanded(
            child: Row(
              children: [
                RoundedCard(colors: gradientColors),
                RoundedCard(colors: gradientColors),
              ],
            ),
          ),
          Container(
            color: Color(0xFF7047c7),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}

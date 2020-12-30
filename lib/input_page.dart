import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

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
                RoundedCard(colors: gradientColors),
                RoundedCard(colors: gradientColors),
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

class RoundedCard extends StatelessWidget {
  RoundedCard({@required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: colors,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

const List<Color> gradientColors = [
  const Color(0xff2CDBC5),
  const Color(0xffadff9a)
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
            begin: Alignment.topLeft,
            end: Alignment(0.8, 0.0),
            colors: colors,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}

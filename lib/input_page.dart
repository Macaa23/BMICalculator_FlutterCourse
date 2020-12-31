import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/CardContent.dart';
import 'package:bmi_calculator/RoundedCard.dart';

const List<Color> gradientColorsActive = [
  const Color(0x8Ac4d0ff),
  const Color(0x73908fe7),
  const Color(0x617a6ddd),
];

const List<Color> gradientColorsInactive = [
  const Color(0x8Acfd9ff),
  const Color(0x73a6a5eb),
  const Color(0x61948ae3),
];

enum Gender { female, male }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                Expanded(
                  child: RoundedCard(
                    colors: selectedGender == Gender.female
                        ? gradientColorsActive
                        : gradientColorsInactive,
                    cardContent: CardContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'WOMAN',
                    ),
                    state: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RoundedCard(
                    colors: selectedGender == Gender.male
                        ? gradientColorsActive
                        : gradientColorsInactive,
                    cardContent: CardContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    state: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RoundedCard(colors: gradientColorsInactive),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RoundedCard(
                    colors: gradientColorsInactive,
                  ),
                ),
                Expanded(
                    child: RoundedCard(
                  colors: gradientColorsInactive,
                )),
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

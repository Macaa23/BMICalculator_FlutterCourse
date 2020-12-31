import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/CardContent.dart';
import 'package:bmi_calculator/RoundedCard.dart';
import 'constants.dart';

enum Gender { female, male }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int personHeight = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            child: RoundedCard(
              colors: gradientColorsInactive,
              cardContent: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: textStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        personHeight.toString(),
                        style: numberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: textStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: personHeight.toDouble(),
                    min: 100.0,
                    max: 220.0,
                    activeColor: Color(0xFF7047c7),
                    inactiveColor: Color(0x617047c7),
                    onChanged: (double newValue) {
                      setState(() {
                        personHeight = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
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

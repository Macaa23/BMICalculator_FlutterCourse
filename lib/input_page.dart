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
  int weight = 70;
  int age = 25;

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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
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
                    cardContent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: textStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: FontAwesomeIcons.minus,
                              state: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedIconButton(
                              icon: FontAwesomeIcons.plus,
                              state: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: RoundedCard(
                  colors: gradientColorsInactive,
                  cardContent: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: textStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedIconButton(
                            icon: FontAwesomeIcons.minus,
                            state: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundedIconButton(
                            icon: FontAwesomeIcons.plus,
                            state: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
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

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.icon, @required this.state});
  final IconData icon;
  final Function state;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: state,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF908fe7),
    );
  }
}

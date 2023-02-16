import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/icon_content.dart';
import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:bmi_calculator_flutter/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double minSliderValue = 120;
const double maxSliderValue = 220;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int initialHeight =
      ((minSliderValue + maxSliderValue) / 2).floor();
  int initialWeight = 60;
  int initialAge = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    pressHandler: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: Gender.male == selectedGender
                        ? kActiveCardColor
                        : kInactiveCardcolor,
                    cardChild: const IconContent(
                      label: 'HOMME',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      pressHandler: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: Gender.female == selectedGender
                          ? kActiveCardColor
                          : kInactiveCardcolor,
                      cardChild: const IconContent(
                        label: 'FEMME',
                        icon: FontAwesomeIcons.venus,
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'TAILLE',
                    style: kLabelTextStyle,
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        initialHeight.floor().toString(),
                        style: kHeightSliderTextStyle,
                      ),
                      const SizedBox(width: 2.5),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: initialHeight.toDouble(),
                    min: minSliderValue,
                    max: maxSliderValue,
                    onChanged: (double value) {
                      setState(() {
                        initialHeight = value.floor();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'POIDS',
                          style: kLabelTextStyle,
                        ),
                        Text(initialWeight.toString(),
                            style: kHeightSliderTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              pressHandler: () {
                                setState(() {
                                  initialWeight--;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: Icons.add,
                              pressHandler: () {
                                setState(() {
                                  initialWeight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(initialAge.toString(),
                            style: kHeightSliderTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              pressHandler: () {
                                setState(() {
                                  initialAge--;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: Icons.add,
                              pressHandler: () {
                                setState(() {
                                  initialAge++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFEB1555),
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}

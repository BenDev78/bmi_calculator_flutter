import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/input_page.dart';
import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Votre résultat', style: kLargeButtonTextStyle),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Hello', style: kHeightSliderTextStyle.copyWith(color: Colors.green)),
                    const Text('World'),
                    const Text('Résultat'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: const Color(0xFFEB1555),
                height: 80.0,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10.0),
                child: const Center(
                  child: Text(
                    'RE-CALCULER',
                    style: kLargeButtonTextStyle,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

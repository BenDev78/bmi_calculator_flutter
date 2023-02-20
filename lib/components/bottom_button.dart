import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final void Function()? pressHandler;
  final String text;

  const BottomButton({
    super.key,
    required this.text,
    this.pressHandler
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressHandler,
      child: Container(
        color: const Color(0xFFEB1555),
        height: 80.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
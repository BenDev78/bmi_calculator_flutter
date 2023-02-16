import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final void Function()? pressHandler;
  final Widget? cardChild;

  const ReusableCard(
      {super.key, required this.color, this.pressHandler, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressHandler,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}

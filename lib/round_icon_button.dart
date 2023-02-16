import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final void Function()? pressHandler;
  final IconData icon;
  const RoundIconButton({Key? key, required this.icon, this.pressHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: pressHandler,
      constraints: const BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4c4f5e),
      child: Icon(icon),
    );
  }
}

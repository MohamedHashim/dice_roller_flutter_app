import 'package:flutte_testr_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

//alternetive consturctor function with predefined colors
  const GradientContainer.purple({super.key})
      : startColor = Colors.deepOrange,
        endColor = Colors.indigo;

  final Color startColor;
  final Color endColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}

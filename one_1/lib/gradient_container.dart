import "package:flutter/material.dart";
import 'package:one_1/dice_roller.dart';
import 'package:one_1/style_text.dart';
import 'package:one_1/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});
  const GradientContainer.purple({super.key})
      : color1 = Colors.black,
        color2 = Colors.white,
        color3 = Colors.blue;

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

import "package:flutter/material.dart";
import 'package:one_1/style_text.dart';

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
  void rollDice() {}
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StyleText("Zar Atma Simulasyonu"),
            const SizedBox(height: 70),
            Image.asset('assets/images/dice-5.png', width: 200),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: rollDice,
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  textStyle: const TextStyle(fontSize: 32)),
              //padding: const EdgeInsets.only(top:20),
              child: const Text("Zarları at"),
            )
          ],
        ),
      ),
    );
  }
}

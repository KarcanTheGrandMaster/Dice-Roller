import 'package:flutter/material.dart';
import 'package:one_1/style_text.dart';
import 'dart:math';

final randomizer2 = Random();
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  var currentDiceRoll2 = 4;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer2.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 70),
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        Image.asset('assets/images/dice-$currentDiceRoll2.png', width: 200),
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
    );
  }
}

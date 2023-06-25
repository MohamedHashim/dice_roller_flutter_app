import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

// class starts with _ isa private class and onlu usable in this file
class _DiceRoller extends State<DiceRoller> {
  var diceRoll = 2;
  void onClickButton() {
    // to render the UI again
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceRoll.png', width: 200),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: onClickButton,
            style: TextButton.styleFrom(
              foregroundColor: Colors.amber,
              textStyle: const TextStyle(fontSize: 22),
              // padding: const EdgeInsets.only(top: 50)
            ),
            child: const Text('New Button')),
      ],
    );
  }
}

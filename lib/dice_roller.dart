import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var diceImg = 'assets/images/dice-1.png';
  void onClickButton() {
    // to render the UI again
    setState(() {
      diceImg = 'assets/images/dice-2.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(diceImg, width: 200),
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

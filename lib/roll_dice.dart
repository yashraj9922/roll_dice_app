import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var activeDiceImage = 'dice-images/dice-1.png';
  var diceRoll = 1; // Declare diceRoll as a class member

  void rollDice() {
    diceRoll = randomizer.nextInt(6) + 1;
    //setState function will help in reexceuting build method and update the image
    setState(() {
      //passing an annomnoyus function and inside that u should perform any update to class var to object variables which will be reflecting into UI
      activeDiceImage = 'dice-images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$diceRoll',
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 36,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 35),
        Image.asset(activeDiceImage, width: 200, height: 200),
        const SizedBox(height: 35),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 160, 24),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 23,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
          child: const Text(
            "ROLL DICE",
            style: TextStyle(
              color: Color.fromARGB(255, 246, 255, 0),
              fontSize: 25,
              fontWeight: FontWeight.bold,
              // fontStyle: FontStyle.italic,
            ),
          ),
        )
      ],
    );
  }
}

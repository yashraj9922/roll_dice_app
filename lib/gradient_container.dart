import 'package:flutter/material.dart';
import 'package:roll_dice_app/style_text.dart';

class GradientContainer extends StatelessWidget {
  //Name of class should start with CapitalLetter
  const GradientContainer(
      {super.key}); //creating constructor function for a class
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amber, Colors.green],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyleText(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:roll_dice_app/roll_dice.dart';

const Alignment startAlignment = Alignment.topCenter;
// final var startAlignment = Alignment.topLeft; --> (ref. lec 29)final keyword means this data containier never recieved an another value(reassigned) other than assigned value

const Alignment endAlignment = Alignment.bottomCenter;
//const var endAlignment = Alignment.bottomRight; --> compile time constant value...as if any funct is called it will dynamically assign the value to varibale...hence using const keyword the funct need not to be execute when app executes...increasing internal performannce of the app

class GradientContainer extends StatelessWidget {
  //Name of class should start with CapitalLetter

  const GradientContainer(
      {super.key,
      required this.colors}); //creating constructor function for a class

  final List<Color> colors;

  GradientContainer.rainbow({super.key}): colors = [
          const Color.fromRGBO(204, 129, 129, 1),
          const Color.fromRGBO(232, 174, 92, 1),
          const Color.fromRGBO(230, 241, 112, 1),
          const Color.fromRGBO(109, 228, 143, 1),
          const Color.fromRGBO(102, 202, 222, 1),
          const Color.fromARGB(255, 89, 108, 206),
          const Color.fromRGBO(132, 106, 193, 1),
        ];

  @override
  Widget build(context) {
    // (*before adding const keyword to var*)startAlignment = Alignment.bottomCenter; --> data/values in the variables can be overwritten hence remove const keyword*

    return Container(
      decoration: /*const*/ /**const**/ BoxDecoration(
        gradient: LinearGradient(
          colors: colors, //**ref.

          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: /*const*/ const Center(
        // child: StyledText("...hello...world..."),
        child: RollDice(),
      ),
    );
  }
}

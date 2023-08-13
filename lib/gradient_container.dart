import 'package:flutter/material.dart';
import 'package:roll_dice_app/style_text.dart';

const Alignment startAlignment = Alignment.topLeft;
// final var startAlignment = Alignment.topLeft; --> (ref. lec 29)final keyword means this data containier never recieved an another value(reassigned) other than assigned value

const Alignment endAlignment = Alignment.bottomRight;
//const var endAlignment = Alignment.bottomRight; --> compile time constant value...as if any funct is called it will dynamically assign the value to varibale...hence using const keyword the funct need not to be execute when app executes...increasing internal performannce of the app

class GradientContainer extends StatelessWidget {
  //Name of class should start with CapitalLetter

  const GradientContainer(
      {super.key,
      required this.colors}); //creating constructor function for a class

  final List<Color> colors;

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
      child: const Center(
        child: StyledText("...hello...world..."),
      ),
    );
  }
}

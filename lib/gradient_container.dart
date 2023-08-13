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

  void rollDice() {
    print("Rolling Dice");
  }

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
      child: /*const*/ Center(
        // child: StyledText("...hello...world..."),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('dice-images/dice-1.png', width: 200, height: 200),
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
        ),
      ),
    );
  }
}

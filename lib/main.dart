import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      // const keyword help Dart to optimize runtime performance
      //when same widget with same data is used for multiple time in an app...it will use sam existing memory location
      // Avoiding duplication of memory hence making App more efficicent and fast
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 250, 209, 57),
        body: GradientContainer(colors: [
          Color.fromRGBO(132, 239, 255, 1),
          Color.fromRGBO(0, 191, 255, 1)
        ]), //this calls the constructor function of the usr defined class
      ),
    ),
  );
}

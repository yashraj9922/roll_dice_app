import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // const keyword help Dart to optimize runtime performance
      //when same widget with same data is used for multiple time in an app...it will use sam existing memory location
      // Avoiding duplication of memory hence making App more efficicent and fast
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 250, 209, 57),
        body: GradientContainer(),//this calls the constructor function of the usr defined class
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  //Name of class should start with CapitalLetter
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
            child: Text(
              "...hello world...",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 94, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        );
  }
}

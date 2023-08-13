import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  // const StyleText(String text, {super.key}):outputText = text;
  // String outputText;
  final String text;
  @override
  Widget build(context) {
    return Text(text,
      style: const TextStyle(
        color: Color.fromARGB(255, 0, 94, 255),
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}

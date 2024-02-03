import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text,
      {super.key}); // we using const here because its is guaranteed that once the object is initialized it wont be changed afterwards in the class
  // Cosnt operator actually allows dart to keep that value as a cashed memory for it to be used faster

  final String text; // Class Variable for the text down there to work here

  @override
  Widget build(context) {
    return Text(
      text, //Must be the name of the variable
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize:
            28.5, // Can be given a double that is decimal or not its our choice
      ),
    );
  }
}

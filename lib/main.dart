import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 88, 43, 210),
        body: const GradientContainer(),
      ),
    ),
  ); //Blue Lines suggest that the code has potential to be optimized
}

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}) : super(key: key);
  //   OR
  const GradientContainer(
      {super.key}); // Const unlocks your code to be optimizable

  @override
  Widget build(
      context) // context us nothing but the parameter that the function or method Build needs to accept
  {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 29, 11, 79),
            Color.fromARGB(218, 12, 3, 70),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          "What's GOOD",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize:
                28.5, // Can be given a double that is decimal or not its our choice
          ),
        ),
      ),
    );
  }
}

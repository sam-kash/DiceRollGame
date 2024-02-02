import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

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
        child: StyledText(),
      ),
    );
  }
}

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment
    .bottomRight; // Here we are initializing the value and putting it into use

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
        // Here I am removing the const before BoxDecoration because the variables are not accepting a constant value as it can constantly changed
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 29, 11, 79),
            Color.fromARGB(218, 12, 3, 70),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}

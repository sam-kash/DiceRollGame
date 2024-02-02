import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      "What's GOOD",
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize:
            28.5, // Can be given a double that is decimal or not its our choice
      ),
    );
  }
}

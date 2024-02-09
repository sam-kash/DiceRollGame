import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 88, 43, 210),
        body: GradientContainer(const Color.fromARGB(255, 66, 10, 112),
            const Color.fromARGB(255, 21, 55, 134)),
      ),
    ),
  ); //Blue Lines suggest that the code has potential to be optimized
}

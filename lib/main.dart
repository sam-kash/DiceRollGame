import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

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

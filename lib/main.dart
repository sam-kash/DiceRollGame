import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 88, 43, 210),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 24, 227),
              Color.fromARGB(218, 84, 47, 186),
            ]),
          ),
          child: const Center(
            child: Text('Hello NIGGAS'),
          ),
        ),
      ),
    ),
  ); //Blue Lines suggest that the code has potential to be optimized
}

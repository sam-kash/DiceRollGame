import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 88, 43, 210),
        body: Container(
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
        ),
      ),
    ),
  ); //Blue Lines suggest that the code has potential to be optimized
}

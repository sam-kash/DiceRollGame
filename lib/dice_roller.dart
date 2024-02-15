import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override // Another method we are forced to implement just cuz we are using statefulWidget
  State createState() // It returns a state object
  {
    return _DicerollerState();
  }
}

class _DicerollerState extends State<
    DiceRoller> //_ has a meaning in Dart, It means its private and it will only be used here in this particular file only
{
  var activeDiceImage = 'assets/images/dice-2.png';

  void rolldice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-4.png';
    });
    // print(
    //     "Rolling it ..."); //We use it to see if the function is working or not, only the developer can actually see this
  }

  @override
  Widget build(
      context) // IT returns a Widget   // Wanna know what this contenxt parameter is all about
  {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
            height:
                20), //Its a widget that is creating a box of height 20 pixels between image and the button which is acting like a padding

        TextButton(
          //Code for Creating a Button
          onPressed:
              rolldice, // WE using this approach where we define a method or a function in the functino define area and then calling it by passing a pointer using function name
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20,
              // ), //Showing a different approach, this one is perfectly fine tho
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 23)),
          child: const Text('Roll DICE'),
        )
      ],
    );
  }
}

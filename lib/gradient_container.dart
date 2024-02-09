//import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment
    .bottomRight; // Here we are initializing the value and putting it into use

// Another Method

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2,
      {super.key}); // Const unlocks your code to be optimizable

  final Color color1;
  final Color color2;
  var activeDiceImage = 'assets/images/dice-2.png';

  void rolldice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print(
        "Rolling it ..."); //We use it to see if the function is working or not, only the developer can actually see this
  }

  @override
  Widget build(
      context) // context us nothing but the parameter that the function or method Build needs to accept
  {
    return Container(
      decoration: BoxDecoration(
        // List in Dart in default can be edited, even if they are of the FInal type. so cant use const
        // Here I am removing the const before BoxDecoration because the variables are not accepting a constant value as it can constantly changed
        gradient: LinearGradient(
          colors: [color1, color2], // Color value is always dealt in list
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
            height:
                20), //Its a widget that is creating a box of height 20 pixels between image and the button which is acting like a padding

        TextButton(
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
      ]) // Image is a function , Can Define Multiple Constructor Function into Dart
          ),
    );
  }
}

//        METHOD ONE
// class GradientContainer extends StatelessWidget {
//   // GradientContainer({key}) : super(key: key);
//   //   OR
//   const GradientContainer({super.key, required this.colors}); // Const unlocks your code to be optimizable

//   final List<Color> colors;

//   @override
//   Widget build(
//       context) // context us nothing but the parameter that the function or method Build needs to accept
//   {
//     return Container(
//       decoration:  BoxDecoration(  // List in Dart in default can be edited, even if they are of the FInal type. so cant use const
//         // Here I am removing the const before BoxDecoration because the variables are not accepting a constant value as it can constantly changed
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('YO WhatsUp'),
//       ),
//     );
//   }
// }

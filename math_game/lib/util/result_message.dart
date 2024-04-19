import 'package:flutter/material.dart';
import '../const.dart';

class ResultMessage extends StatelessWidget {
  final String message;
  final VoidCallback onTap;
  // ignore: prefer_typing_uninitialized_variables
  final icon;

  // ignore: use_super_parameters
  const ResultMessage({
    Key? key,
    required this.message,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 195, 255, 0),
      // ignore: sized_box_for_whitespace
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // the result
            Text(
              message,
              style: whiteTextStyle,
            ),

            // button to go to next question
            GestureDetector(
              onTap: onTap,
              child: Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 34, 254, 0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

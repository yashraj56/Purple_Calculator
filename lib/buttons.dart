import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textcolor;
  final String buttontext;
  final buttontapped;
  /*Constructo decides button color, button text color and
  required text over button*/
  MyButton(
      {this.color,
      this.textcolor,
      required this.buttontext,
      this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttontext,
                style: TextStyle(color: textcolor, fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: must_be_immutable, use_super_parameters, file_names

import 'package:flutter/material.dart';

class MyElevateButton extends StatelessWidget {
  MyElevateButton({
    required this.onPressed,
    this.buttonColor,
    required this.buttonText,
    this.buttonFont,
    this.fontZize,
    this.height,
    this.width,
    this.radius,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String buttonText;
  final Color? buttonColor;

  final String? buttonFont;
  final double? fontZize;
  double? height, width, radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(fontFamily: buttonFont, fontSize: fontZize),
          )),
    );
  }
}

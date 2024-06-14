// ignore_for_file: use_super_parameters, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  MyTextButton({
    required this.onTap,
    this.buttonColor,
    required this.buttonText,
    this.buttonFont,
    this.fontZize,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final String buttonText;
  final Color? buttonColor;
  final String? buttonFont;
  final double? fontZize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonColor,
          fontSize: fontZize,
          fontFamily: buttonFont,
        ),
      ),
    );
  }
}

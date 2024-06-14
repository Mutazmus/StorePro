// ignore_for_file: must_be_immutable, use_super_parameters

import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  Mytext({
    this.fontFamily,
    this.fontSize,
    required this.text,
    this.textColor,
    this.fontWeight,
    Key? key,
  }) : super(key: key);
  String text;
  String? fontFamily;
  double? fontSize;
  Color? textColor;
  String? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

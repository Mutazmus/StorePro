// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  MyTextFromField({
    this.labelText,
    this.fontFamily,
    this.fontSize,
    this.prefixIcon,
    this.sufixIcon,
    this.isPassword,
    this.borderColor,
    this.readOnly,
    this.controller,
    required this.obscureText,
    this.expands,
    this.textAlign,
    this.hintText,
    this.hintTextDirection,
    this.height,
    this.width,
    this.contentPadding,
    Key? key,
  }) : super(key: key);
  String? labelText;
  String? fontFamily;
  String? hintText;
  double? fontSize;
  IconData? prefixIcon;
  IconData? sufixIcon;
  bool? isPassword;
  bool? readOnly;
  bool obscureText;
  bool? expands;
  TextEditingController? controller;
  Color? borderColor;
  Enum? textAlign;
  TextDirection? hintTextDirection;
  double? height;
  double? width;
  EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
          obscureText: obscureText,
          controller: controller,
          textAlign: TextAlign.end,
          decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(fontFamily: fontFamily, fontSize: fontSize),
              prefixIcon: Icon(prefixIcon),
              suffixIcon: Icon(sufixIcon),
              contentPadding: contentPadding,
              hintText: hintText,
              hintTextDirection: hintTextDirection,
              border: OutlineInputBorder())),
    );
  }
}

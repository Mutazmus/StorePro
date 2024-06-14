// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NavModel {
  final Widget page;
  final GlobalKey<NavigatorState> naveKey;

  NavModel({required this.page, required this.naveKey});
}

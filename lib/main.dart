// ignore_for_file: prefer_const_constructors

import 'package:deliveryfood/presentation/screens/profile.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _HomeState();
}

class _HomeState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return MaterialApp(
        routes: {
          "main": (context) => Profile(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.white),
        home: Home(),
      );
    });
  }
}

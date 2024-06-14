// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last, unnecessary_new

import 'package:deliveryfood/presentation/screens/home.dart';
import 'package:deliveryfood/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class SuccesWithdraw extends StatefulWidget {
  const SuccesWithdraw({super.key});

  @override
  State<SuccesWithdraw> createState() => _SuccesWithdrawState();
}

class _SuccesWithdrawState extends State<SuccesWithdraw> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/suss.png',
              ),
              SizedBox(
                height: 120,
              ),
              Mytext(
                text: "Withdraw Successfuly",
                fontSize: 20,
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: Mytext(
                  text: 'OK',
                  textColor: Colors.white,
                  fontSize: 20,
                ),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Home()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(280, 50),
                    // maximumSize: Size(5, 2),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(
                        color: Color(0xFFFF9800),
                        fontSize: 11,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

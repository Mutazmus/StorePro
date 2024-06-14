// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:deliveryfood/presentation/screens/home.dart';
import 'package:deliveryfood/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(





        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(children: [
            DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Home()));
                    },
                    icon: Icon(Icons.arrow_back))),
            SizedBox(
              width: 20,
            ),
            Mytext(
              text: 'My Profile',
              textColor: Colors.white,
            ),
          ]),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              width: 360,
              height: 130,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Mytext(
                    text: 'Available Balance',
                    textColor: Colors.white,
                    fontSize: 15,
                  ),
                  Mytext(
                    text: '500.00',
                    textColor: Colors.white,
                    fontSize: 30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(100)),
                      child: Mytext(
                        text: 'Withdraw',
                        fontSize: 15,
                        textColor: Colors.white,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 12),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.person,
                        ),
                        onPressed: () {},
                      ),
                      Mytext(text: 'Personal Info'),
                      SizedBox(
                        width: 140,
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.arrow_right,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.settings,
                        ),
                        onPressed: () {},
                      ),
                      Mytext(text: 'Personal Info'),
                      SizedBox(
                        width: 140,
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.arrow_right,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 12),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.history_sharp,
                        ),
                        onPressed: () {},
                      ),
                      Mytext(text: 'Withdraw History'),
                      SizedBox(
                        width: 120,
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.arrow_right,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.format_list_numbered,
                        ),
                        onPressed: () {},
                      ),
                      Mytext(text: 'Mumber Of Order'),
                      SizedBox(
                        width: 120,
                      ),
                      Mytext(text: '200K'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 12),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.reviews,
                        ),
                        onPressed: () {},
                      ),
                      Mytext(text: 'User Reviw'),
                      SizedBox(
                        width: 155,
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.arrow_right,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 12),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.logout_sharp,
                        ),
                        onPressed: () {},
                      ),
                      Mytext(text: 'Log Out'),
                      SizedBox(
                        width: 170,
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.arrow_right,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            )

/*

            Container(
              
              child: Card(
                elevation: 6,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          iconSize: 60,
                          icon: const Icon(
                            Icons.person,
                          ),
                          onPressed: () {},
                        ),
                        Mytext(text: "Personal Information"),
                        IconButton(
                          iconSize: 60,
                          icon: const Icon(
                            Icons.arrow_right,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )

            */
          ],
        ),
      ),
    );
  }
}

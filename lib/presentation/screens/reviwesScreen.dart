// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:deliveryfood/presentation/screens/home.dart';
import 'package:deliveryfood/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class Reviwes extends StatefulWidget {
  const Reviwes({super.key});

  @override
  State<Reviwes> createState() => _ReviwesState();
}

class _ReviwesState extends State<Reviwes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            //  backgroundColor: Colors.white,
            title: Row(children: [
              DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      icon: Icon(Icons.arrow_back))),
              SizedBox(
                width: 20,
              ),
              Mytext(
                text: 'Reviews',
                textColor: Colors.black,
                fontSize: 17,
              ),
            ]),
          ),
          body: SingleChildScrollView(
            clipBehavior: Clip.hardEdge,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, right: 10, left: 10, bottom: 20),
              child: Column(
                children: [
                  for (int i = 1; i < 10; i++)
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage('assets/images/8.jpg'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('13/3/2024'),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  Text(
                                    '...',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 90),
                                child: Text('Great Food And Servers',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 170),
                                child: Text('************',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                  'Chichen Baryani,Chichen Baryani,Chichen Bar',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  'Chichen Baryani,Chichen Baryani,Chichen Bar',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  'Chichen Baryani,Chichen Baryani,Chichen Bar',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    )
                ],
              ),
            ),
          ),
        ));
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:deliveryfood/presentation/screens/home.dart';
import 'package:deliveryfood/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class FoodDetils extends StatefulWidget {
  const FoodDetils({super.key});

  @override
  State<FoodDetils> createState() => _FoodDetilsState();
}

class _FoodDetilsState extends State<FoodDetils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            text: 'Food Details',
            textColor: Colors.black,
            fontSize: 17,
          ),
          SizedBox(
            width: 140,
          ),
          Mytext(
            text: 'EDIT',
            fontSize: 17,
            textColor: Colors.orange,
          ),
        ]),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    height: 100,
                    width: 250,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/burger.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('Chichen Thas Baryani'),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    '\$60',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Kentuky',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    "* 4.5",
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('(10 Reviws)', style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260, bottom: 20),
                child: Mytext(text: 'INGREDIENT'),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 1; i < 3; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                    iconSize: 40,
                                    icon: const Icon(
                                      Icons.person,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Mytext(
                                  text: 'Basic',
                                  fontSize: 15,
                                  textColor: Colors.grey[500],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.orange[500],
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                    iconSize: 40,
                                    icon: const Icon(
                                      Icons.food_bank,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Mytext(
                                  text: 'Basic',
                                  fontSize: 15,
                                  textColor: Colors.grey[500],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                    iconSize: 40,
                                    icon: const Icon(
                                      Icons.person,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Mytext(
                                  text: 'Basic',
                                  fontSize: 15,
                                  textColor: Colors.grey[500],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.orange[500],
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                    iconSize: 40,
                                    icon: const Icon(
                                      Icons.person,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Mytext(
                                  text: 'Basic',
                                  fontSize: 15,
                                  textColor: Colors.grey[500],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                    iconSize: 40,
                                    icon: const Icon(
                                      Icons.person,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Mytext(
                                  text: 'Basic',
                                  fontSize: 15,
                                  textColor: Colors.grey[500],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Mytext(text: 'Description'),
              ),
              SizedBox(
                height: 18,
              ),
              Column(
                children: [
                  for (int i = 1; i < 5; i++)
                    Mytext(
                        textColor: Colors.grey,
                        text:
                            'Description,Description,Description Descriptio Description'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

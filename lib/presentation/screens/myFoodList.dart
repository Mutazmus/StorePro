// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new

import 'package:deliveryfood/presentation/screens/foodDetils.dart';
import 'package:deliveryfood/presentation/screens/home.dart';
import 'package:deliveryfood/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class MyFoodList extends StatefulWidget {
  const MyFoodList({super.key});

  @override
  State<MyFoodList> createState() => _MyFoodListState();
}

class _MyFoodListState extends State<MyFoodList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
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
                text: 'My Food List',
                textColor: Colors.black,
                fontSize: 17,
              ),
            ]),
            bottom: const TabBar(
              indicatorColor: Colors.orange,
              labelColor: Colors.orange,
              tabs: [
                Text(
                  'All      ',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Breakfast',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Lunch',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Dinner',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 250, top: 17),
                    child: Text(
                      'Total 03 Items',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        for (int i = 1; i < 5; i++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => FoodDetils())),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Image(
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/burger.png"),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text('Chichen Baryani'),
                                          SizedBox(
                                            width: 160,
                                          ),
                                          Text(
                                            '...',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 22,
                                            width: 70,
                                            child: Center(
                                              child: Mytext(
                                                text: "Breakfast",
                                                textColor: Colors.orange,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.orange[100]),
                                          ),
                                          SizedBox(
                                            width: 180,
                                          ),
                                          Text('\$60')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "4.5(230)",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            style:
                                                TextStyle(color: Colors.grey),
                                            '(10 Reviws,)',
                                          ),
                                          SizedBox(
                                            width: 110,
                                          ),
                                          Text(
                                            'Pick Up',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),

              ////////////////////////////////////////////////breakfast//////////////////////////////////////
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text('Dinner',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    ),
                  ],
                ),
              ),

              ////////////////////////////////////////////////////lunch///////////////////////////
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text('Dinner',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    ),
                  ],
                ),
              ),
              /////////////////////////////////////dinner///////////////////////////////////////

              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text('Dinner',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

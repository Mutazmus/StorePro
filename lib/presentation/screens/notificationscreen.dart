// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:deliveryfood/presentation/screens/home.dart';
import 'package:deliveryfood/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class notivcate extends StatefulWidget {
  const notivcate({super.key});

  @override
  State<notivcate> createState() => _MyFoodListState();
}

class _MyFoodListState extends State<notivcate> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
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
                  text: 'NOTIVICATIONS',
                  textColor: Colors.black,
                  fontSize: 17,
                ),
              ]),
              bottom: const TabBar(
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                tabs: [
                  Text(
                    'Notivication',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Messages(3)',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Column(
                  children: [
                    for (int i = 1; i < 5; i++)
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage:
                                  AssetImage('assets/images/8.jpg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Ibrahim Musa'),
                                Text(
                                  'New Order',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '20 Min ago',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/burger.png')),
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                          ],
                        ),
                      )
                  ],
                ),

                ////////////////////////////////////////////////////////MESSEGESS///////////////////////////////////////////

                Column(
                  children: [
                    for (int i = 1; i < 5; i++)
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage:
                                  AssetImage('assets/images/8.jpg'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text('Ibrahim Musa'),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'Sounds Awesome',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Column(
                              children: [
                                Text(
                                  '19:37',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

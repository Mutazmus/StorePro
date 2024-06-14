// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:deliveryfood/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

void BottomCartSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        child: Container(
            height: 600,
            padding: EdgeInsets.only(top: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    clipBehavior: Clip.hardEdge,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text('20 Running Orders'),
                        ),
                        for (int i = 1; i < 5; i++)
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                        "assets/images/f4.jpg",
                                      )),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.all(10),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "#Breakfast",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "Chicken Baryani",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "ID:32053",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$60",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        ElevatedButton(
                                          child: Text('Done'),
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.orange,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              textStyle: TextStyle(
                                                  color: Colors.orange,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 75,
                                          child: Center(
                                              child: Mytext(
                                            text: "Cancel",
                                            textColor: Colors.orange,
                                          )),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.orange,
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ])),
      );
    },
  );
}

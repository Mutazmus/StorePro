// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_types_as_parameter_names, use_super_parameters, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_new, sort_child_properties_last

import 'package:deliveryfood/presentation/screens/addNewItem.dart';
import 'package:deliveryfood/presentation/screens/nav-bar.dart';
import 'package:deliveryfood/presentation/widgets/bottomCardSheet.dart';
import 'package:deliveryfood/presentation/widgets/linechart.dart';
import 'package:deliveryfood/presentation/widgets/text.dart';
import 'package:deliveryfood/presentation/widgets/textButton.dart';
import 'package:flutter/material.dart';

//import 'package:fl_chart/fl_chart.dart';

import 'nav-model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  final NotificationNavKey = GlobalKey<NavigatorState>();
  final ProfileNavKey = GlobalKey<NavigatorState>();

  int selectedTap = 0;
  List<NavModel> items = [];

  @override
  void initState() {
    super.initState();

    items = [
      NavModel(page: TapPage(tab: 1), naveKey: homeNavKey),
      NavModel(page: TapPage(tab: 2), naveKey: searchNavKey),
      NavModel(page: TapPage(tab: 3), naveKey: NotificationNavKey),
      NavModel(page: TapPage(tab: 4), naveKey: ProfileNavKey),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
        onPopInvoked: (didPop) {
          if (items[selectedTap].naveKey.currentState?.canPop() ?? false) {
            items[selectedTap].naveKey.currentState?.pop();
            Future.value(false);
          } else {
            Future.value(true);
          }
        },
        child: Scaffold(
          body: IndexedStack(
            index: selectedTap,
            children: items
                .map((Page) => Navigator(
                      key: Page.naveKey,
                      onGenerateInitialRoutes: (navigator, initialRoute) {
                        return [
                          MaterialPageRoute(builder: (context) => Page.page)
                        ];
                      },
                    ))
                .toList(),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            margin: EdgeInsets.only(top: 10),
            height: 64,
            width: 64,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => AddNewItem()));
              },
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(color: Colors.orange)),
              child: Icon(
                Icons.add,
                color: Colors.orange,
              ),
            ),
          ),
          bottomNavigationBar: NavBar(
              pageIndex: selectedTap,
              onTap: (Index) {
                if (Index == selectedTap) {
                  items[Index]
                      .naveKey
                      .currentState
                      ?.popUntil((route) => route.isFirst);
                } else {
                  setState(() {
                    selectedTap = Index;
                  });
                }
              }),
        ));
  }
}

class TapPage extends StatefulWidget {
  final int tab;

  const TapPage({super.key, required this.tab}) : super();

  @override
  State<TapPage> createState() => _TabPageState();
}

class _TabPageState extends State<TapPage> {
  String dropdownvalue = 'Halal Lab Office';
  String dropdownvalue1 = 'Halal ';

  var items = [
    'Halal Lab Office',
    'Item 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu_open_sharp),
          onPressed: () {
            BottomCartSheet(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
        title: Padding(
          padding: const EdgeInsets.only(top: 28),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                Mytext(
                  text: 'LOCATION',
                  fontSize: 17,
                  textColor: Colors.orange,
                ),
                DropdownButton(
                  value: dropdownvalue,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
              ],
            ),
            CircleAvatar(
              radius: 23.0,
              backgroundImage: AssetImage('assets/images/8.jpg'),
            ),
          ]),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          reverse: false,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 100, top: 100, left: 13, right: 8),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 60),
                          child: Mytext(
                            text: "20",
                            fontSize: (50),
                          ),
                        ),
                        Mytext(
                          text: "RUNNING ORDERS",
                          fontSize: (15),
                          textColor: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Mytext(
                            text: "05",
                            fontSize: (50),
                          ),
                        ),
                        Mytext(
                          text: "ORDER REQUEST",
                          fontSize: (15),
                          textColor: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, bottom: 0),
                child: Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Mytext(
                            text: "Total Revenue",
                            fontSize: (15),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          DropdownButton(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            value: dropdownvalue,
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text('Daily'),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {},
                          ),
                          SizedBox(
                            width: 75,
                          ),
                          MyTextButton(
                            onTap: () {},
                            buttonText: "See Detils",
                            buttonColor: Colors.orange,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 280),
                        child: Mytext(
                          text: '2,241',
                          fontSize: (17),
                          textColor: Colors.grey[500],
                        ),
                      ),
                      Container(
                          width: 250,
                          height: 200,
                          decoration: BoxDecoration(),
                          child: LineChart())
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 14,
                ),
                child: Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Mytext(
                                  text: "Reviwes",
                                  fontSize: (15),
                                ),
                                SizedBox(
                                  width: 185,
                                ),
                                MyTextButton(
                                  onTap: () {},
                                  buttonText: "See All Reviews",
                                  buttonColor: Colors.orange,
                                ),
                              ],
                            ),
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Mytext(
                            text: "4.9",
                            fontSize: (22),
                            textColor: Colors.orange,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MyTextButton(
                            onTap: () {},
                            buttonText: "Total 20 Reviews",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 14,
                ),
                child: Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Mytext(
                                    text: "Pupulers Items This Weeks",
                                    fontSize: (12),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  MyTextButton(
                                    onTap: () {},
                                    buttonText: "See All",
                                    buttonColor: Colors.orange,
                                  ),
                                ],
                              ),
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 2, right: 5)),
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/8.jpg')),
                                  color: Colors.orange[50],
                                  borderRadius: BorderRadius.circular(30.0)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/8.jpg')),
                                  color: Colors.orange[50],
                                  borderRadius: BorderRadius.circular(30.0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final int tab;
  const Page({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Center(
        child: Mytext(text: 'Tab $tab'),
      ),
    );
  }
}

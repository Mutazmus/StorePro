// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, annotate_overrides, unnecessary_new, camel_case_types

import 'package:deliveryfood/presentation/screens/addNewItem.dart';
import 'package:deliveryfood/presentation/screens/home.dart';
import 'package:deliveryfood/presentation/screens/nav-bar.dart';
import 'package:deliveryfood/presentation/screens/nav-model.dart';
import 'package:flutter/material.dart';

class BttomBarS extends StatefulWidget {
  const BttomBarS({super.key});

  @override
  State<BttomBarS> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BttomBarS> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  final NotificationNavKey = GlobalKey<NavigatorState>();
  final ProfileNavKey = GlobalKey<NavigatorState>();

  int selectedTap = 0;
  List<NavModel> items = [];

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

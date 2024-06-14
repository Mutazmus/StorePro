// ignore_for_file: prefer_const_constructors, file_names, unnecessary_new

import 'dart:io';

import 'package:deliveryfood/presentation/screens/myFoodList.dart';
import 'package:deliveryfood/presentation/screens/notificationscreen.dart';
import 'package:deliveryfood/presentation/screens/reviwesScreen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({super.key, required this.pageIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        margin: EdgeInsets.only(
          bottom: Platform.isAndroid ? 0 : 0,
        ),
        child: BottomAppBar(
          shape: AutomaticNotchedShape(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
          ),
          color: Colors.white,
          elevation: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: 0,
              color: Colors.white,
              child: Row(
                children: [
                  navItem(Icons.grid_view_sharp, pageIndex == 0,
                      onTap: () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Reviwes()))),
                  navItem(Icons.menu, pageIndex == 1,
                      onTap: () => () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Reviwes()))),
                  SizedBox(
                    width: 60,
                  ),
                  navItem(Icons.notifications, pageIndex == 2,
                      onTap: () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => notivcate()))),
                  navItem(
                    Icons.person,
                    pageIndex == 3,
                    onTap: () => {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => MyFoodList()))
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget navItem(IconData icon, bool selected, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon,
          color: selected ? Colors.orange : Colors.grey.withOpacity(0.4),
        ),
      ),
    );
  }
}

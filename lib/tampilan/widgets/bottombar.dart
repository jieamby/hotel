import 'package:flutter/material.dart';
import 'package:aplikasi_hotel/tampilan/widgets/bottombaritem.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar ({
    Key key,
  }) : super(key: key);

  @override
  _MyBottomBarState createState() => _MyBottomBarState();
  }
  
  class _MyBottomBarState extends State<MyBottomBar> {
    int _active = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        MyBottomBarItem(
          active: _active,
          id: 0,
          icon: Icons.home,
          text: "Home",
          function: () {
            setState(() {
              _active = 0;
            });
          },
        ),
        MyBottomBarItem(
          active: _active,
          id: 1,
          icon: Icons.list,
          text: "Pesanan",
          function: (){
            setState(() {
              _active = 1;
            });
          },
        ),
        MyBottomBarItem(
          active: _active,
          id: 2,
          icon: Icons.inbox,
          text: "Pesan",
          function: () {
            setState(() {
              _active = 2;
            });
          },
        ),
        MyBottomBarItem(
          active: _active,
          id: 3,
          icon: Icons.person,
          text: "Profile",
          function: () {
            setState(() {
              _active = 3;
            });
          },
        ),
      ],
    );
  }
    
}

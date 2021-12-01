import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xFF0084FF),
      elevation: 0,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.briefcase), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '')
      ],
    );
  }
}

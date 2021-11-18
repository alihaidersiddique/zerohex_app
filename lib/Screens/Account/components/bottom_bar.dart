import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xFF0084FF),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, size: 32), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.luggage, size: 32), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person, size: 32), label: '')
      ],
    );
  }
}

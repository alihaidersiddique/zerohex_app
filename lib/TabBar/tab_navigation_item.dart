import 'package:flutter/material.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        // TabNavigationItem(
        //   page: HomePage(),
        // ),
        // TabNavigationItem(
        //   page: FeedPage(),
        // ),
      ];
}
// TODO Implement this library.
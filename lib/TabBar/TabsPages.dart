import 'package:flutter/material.dart';
import 'tab_navigation_item.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String home = 'assets/home.svg';
final String profile = 'assets/person.svg';
final String feed = 'assets/briefcase.svg';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          // ignore: sdk_version_ui_as_code
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.white,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Color(0xFF75ECA2),
              textTheme: Theme.of(context).textTheme.copyWith(
                  caption: new TextStyle(
                      color: Colors
                          .yellow))), // sets the inactive color of the `BottomNavigationBar`

          child: BottomNavigationBar(
//        fixedColor: Color(0xFF75ECA2),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            onTap: (int index) => setState(() => _currentIndex = index),

//        fixedColor: Color(0xFF75ECA2),
            items: <BottomNavigationBarItem>[
              new BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  home,
                  height: 24,
                  color: Color(0xFF43525E),
                ),

                activeIcon: SvgPicture.asset(
                  home,
                  height: 24,
                  color: Color(0xFF0084FF),
                ),
                // ImageIcon(
                //
                //   AssetImage('Assets/wallet.png',),
                //   color: Color(0xFF109E92),
                // ),
                // ignore: deprecated_member_use
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: _currentIndex == 0
                        ? Color(0xFF0084FF)
                        : Color(0xFF43525E),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "circular",
                  ),
                ),
              ),
              new BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  feed,
                  height: 24,
                  color: Color(0xFF43525E),
                ),
                activeIcon: SvgPicture.asset(
                  feed,
                  height: 24,
                  color: Color(0xFF0084FF),
                ),
                // ignore: deprecated_member_use
                title: Text(
                  'Feed',
                  style: TextStyle(
                    color: _currentIndex == 1
                        ? Color(0xFF0084FF)
                        : Color(0xFF43525E),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "circular",
                  ),
                ),
              ),
              new BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    profile,
                    height: 24,
                    color: Color(0xFF43525E),
                  ),
                  activeIcon: SvgPicture.asset(
                    profile,
                    height: 24,
                    color: Color(0xFF0084FF),
                  ),
                  // ignore: deprecated_member_use
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      color: _currentIndex == 2
                          ? Color(0xFF0084FF)
                          : Color(0xFF43525E),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "circular",
                    ),
                  )),
            ],
          )),
    );
  }
}

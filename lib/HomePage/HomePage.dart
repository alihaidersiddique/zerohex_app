// ignore_for_file: deprecated_member_use

import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zerohex_app/Screens/Login/login_page.dart';
import 'package:zerohex_app/widgets/CustomAppBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  final List<String> categories = [
    'Website Development',
    'Mobile Application',
    'UI/UX Designing'
  ];
  final List<String> categoriesImages = [
    'assets/mobile.png',
    'assets/mobile.png',
    'assets/UI-UX.png'
  ];
  final List<String> feedImages = [
    'assets/feed1.png',
    'assets/feed2.png',
    'assets/feed3.png'
  ];
  final List<String> feedDetails = [
    'Redesign mobile app for ecommerce / online shop',
    'Mobile app UI UX for cleaning service',
    'Mobile app online web courses for iOS'
  ];
  final List<String> budget = ['8,342 ZHX', '7,824 ZHX', '14,593 ZHX'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        appBar: RoundedAppBar(),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.clear();
                    prefs.commit();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('Log out'),
                ),
              ),
              SizedBox(height: 20),
              // categories text
              Text(
                "Categories",
                style: TextStyle(
                  color: Color(0xFF43525E),
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 10),
              // horizontal categories
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Color(0xFFFFFFFF),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ImageIcon(
                                  AssetImage(categoriesImages[index]),
                                  color: Color(0xFF3A5A98),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    categories[index],
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Color(0xFF43525E),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20.0),
              //  project feeds text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      color: Color(0xFF43525E),
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xFF0084FF),
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              // vertical project feeds
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 3,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Color(0xFFFFFFFF),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  feedImages[index],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          feedDetails[index],
                                          style: TextStyle(
                                              color: Color(0xFF43525E),
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16.0),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit, sed...',
                                          style: TextStyle(
                                              color: Color(0xFF43525E),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Budget',
                                          style: TextStyle(
                                              color: Color(0xFF98A5AF),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          budget[index],
                                          style: TextStyle(
                                              color: Color(0xFF0084FF),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}

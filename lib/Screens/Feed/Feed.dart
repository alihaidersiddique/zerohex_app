import 'package:introduction_screen/introduction_screen.dart';
import 'package:zerohex_app/Screens/ProjectDetails/projectDetails.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  final List<String> categories = [
    'Website Development',
    'Mobile Application',
    'UI/UX'
  ];
  final List<String> categoriesImages = [
    'assets/web.png',
    'assets/mobile.png',
    'assets/UI-UX.png'
  ];
  final List<String> feedImages = [
    'assets/feed1.png',
    'assets/feed2.png',
    'assets/feed3.png',
    'assets/feed2.png',
    'assets/feed1.png'
  ];
  final List<String> feedDetails = [
    'Redesign mobile app for ecommerce / online shop',
    'Mobile app UI UX for cleaning service',
    'Mobile app online web courses for iOS',
    'Mobile app UI UX for cleaning service',
    'Mobile app UI UX for cleaning service',
  ];
  final List<String> budget = [
    '8,342 ZHX',
    '7,824 ZHX',
    '14,593 ZHX',
    '14,593 ZHX',
    '7,824 ZHX'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        // appBar: RoundedAppBar(),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              height: 105,
              padding: EdgeInsets.only(left: 10, top: 30, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/profileImage.png'),
                    ),
                  ),
                  Container(
                    width: 240,
                    height: 35,
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF3F4F5),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      onChanged: (text) {
                        text = text.toLowerCase();
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: 40,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              child: Image(
                                  image: new AssetImage(
                                      'assets/notifications1.png')),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feeds",
                    style: TextStyle(
                        color: Color(0xFF43525E),
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
              height: MediaQuery.of(context).size.height * 0.7774,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: feedDetails.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => projectDetailsPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 180,
                        width: MediaQuery.of(context).size.width * 3,
                        child: Card(
                          // shape:RoundedRectangleBorder
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
                                Column(
                                  children: [
                                    Container(
                                        padding:
                                            EdgeInsets.only(right: 0, top: 10),
                                        width: 250,
                                        // color:Colors.blue,
                                        child: Text(
                                          feedDetails[index],
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Color(0xFF43525E),
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16.0),
                                        )),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(right: 0),
                                        width: 250,
                                        child: Text(
                                          'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit, sed...',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Color(0xFF43525E),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0),
                                        )),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(right: 0),
                                        width: 250,
                                        child: Text(
                                          'Budget',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Color(0xFF98A5AF),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.0),
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(right: 0),
                                        width: 250,
                                        child: Text(
                                          budget[index],
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Color(0xFF0084FF),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0),
                                        )),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}

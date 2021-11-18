import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class submitProposalPage extends StatefulWidget {
  @override
  _submitProposalPageState createState() => _submitProposalPageState();
}

class _submitProposalPageState extends State<submitProposalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFE5E5E5),
      // appBar: RoundedAppBar(),
      body: SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 220.0,
              color: Color(0xFFA7BAC1),
              child: SizedBox(
                height: 220.0,
                width: 600.0,
                child: Carousel(
                  boxFit: BoxFit.fill,
                  autoplay: false,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  dotSize: 5.0,
                  // dotIncreasedColor: Color(0xFFFF335C),
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.bottomCenter,
                  dotVerticalPadding: 0.0,

                  showIndicator: true,
                  indicatorBgPadding: 7.0,
                  images: [
                    ExactAssetImage(
                      "assets/feedDetails.png",
                    ),
                    ExactAssetImage("assets/feedDetails.png"),
                    ExactAssetImage("assets/feedDetails.png"),
                  ],
                ),
              ),
            ),

            Container(
              color: Color(0xFFF8F8F8),
              height: 70,
              padding: EdgeInsets.only(left: 10, top: 10, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/profileImage.png'),
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          child: Text("Georgius Revaldo",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color(0xFF43525E),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0)),
                        ),
                        Container(
                          width: 150,
                          child: Text("24 Total Project",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color(0xFF98A5AF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0)),
                        ),
                      ]),
                ],
              ),
            ),
            Container(
              // color: Color(0xFFF8F8F8),
              height: 70,
              padding: EdgeInsets.only(left: 10, top: 10, right: 0),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 150,
                            child: Text("Posted:",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xFF98A5AF),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0)),
                          ),
                          Container(
                            width: 150,
                            child: Text("16 Jul 2021",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xFF0084FF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0)),
                          ),
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 150,
                            child: Text("Deadline Submission:",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xFF98A5AF),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0)),
                          ),
                          Container(
                            width: 150,
                            child: Text("16 Jul 2021",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xFF0084FF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0)),
                          ),
                        ]),
                  ],
                ),
              ]),
            ),
            //Separator
            Container(
              width: 370,
              child: const MySeparator(color: Color(0xFFB4B4B4)),
            ),
            //project details
            Container(
              // color: Color(0xFFF8F8F8),

              padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 25),
                            width: 340,
                            child: Text(
                                "Redesigning E-Commerce Website and \nWebapp for 3 days:",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xFF43525E),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24.0)),
                          ),
                          Container(
                            width: 340,
                            child: Text(
                                "Here’s the request description. >> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n\n\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xFF43525E),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20.0)),
                          ),
                        ]),
                  ],
                ),
              ]),
            ),

            //Separator
            Container(
              width: 370,
              child: const MySeparator(color: Color(0xFFB4B4B4)),
            ),

            Container(
              width: 380,
              height: 90.0,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 180,
                    height: 40,
                    // color:Colors.blue,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 180,
                            child: Text("Budget:",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xFF43525E),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0)),
                          ),
                          Container(
                            width: 180,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("11,467 ZHX",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Color(0xFF0084FF),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0)),
                                  SizedBox(width: 10),
                                  Text("~\$220",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Color(0xFF98A5AF),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0)),
                                ]),
                          ),
                        ]),
                  ),
                  Container(
                    width: 150,
                    // color:Colors.blue,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              child: Text("Submit An Offer".toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(
                                      EdgeInsets.all(20)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xFF0084FF)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xFF0084FF)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(color: Color(0xFF0084FF))))),
                              onPressed: () => null),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // ListView(
      //   children: [
      //     CarouselSlider(
      //       items: [
      //
      //         //1st Image of Slider
      //         Container(
      //           width:400,
      //           margin: EdgeInsets.all(0.0),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(8.0),
      //             image: DecorationImage(
      //               image: AssetImage("assets/feed2.png"),
      //               fit: BoxFit.fill,
      //             ),
      //           ),
      //         ),
      //
      //         //2nd Image of Slider
      //         Container(
      //           margin: EdgeInsets.all(0.0),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(8.0),
      //             image: DecorationImage(
      //               image: AssetImage("assets/feed1.png"),
      //               fit: BoxFit.fill,
      //             ),
      //           ),
      //         ),
      //
      //         //3rd Image of Slider
      //         Container(
      //           margin: EdgeInsets.all(0.0),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(8.0),
      //             image: DecorationImage(
      //               image: AssetImage("assets/feed1.png"),
      //               fit: BoxFit.fill,
      //             ),
      //           ),
      //         ),
      //
      //         //4th Image of Slider
      //         Container(
      //           margin: EdgeInsets.all(0.0),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(8.0),
      //             image: DecorationImage(
      //               image: AssetImage("assets/feed1.png"),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //
      //         //5th Image of Slider
      //         Container(
      //           margin: EdgeInsets.all(1.0),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(8.0),
      //             image: DecorationImage(
      //               image: AssetImage("assets/feed3.png"),
      //               scale:0.8,
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //
      //       ],
      //
      //       //Slider Container properties
      //       options: CarouselOptions(
      //         height: 220,
      //         aspectRatio: 2.0,
      //         viewportFraction: 0.8,
      //         initialPage: 1,
      //         enableInfiniteScroll: true,
      //         reverse: false,
      //         autoPlay: false,
      //         autoPlayInterval: Duration(seconds: 3),
      //         autoPlayAnimationDuration: Duration(milliseconds: 800),
      //         autoPlayCurve: Curves.fastOutSlowIn,
      //         enlargeCenterPage: true,
      //         // onPageChanged: callbackFunction,
      //         scrollDirection: Axis.horizontal,
      //       )
      //     ),
      //   ],
      // ),
    );
  }
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 0.5, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 6.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (1.0 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.center,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

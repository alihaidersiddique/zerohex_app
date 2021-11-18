import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../size_config.dart';

// ignore: must_be_immutable
class Header extends StatelessWidget {
  Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    double screenWidth = SizeConfig.screenWidth;
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff324259),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
      ),
      height: defaultSize * 30,
      width: screenWidth,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: CustomAppBar(),
            top: 100,
            left: 20,
            right: 20,
          ),
          Positioned(
            bottom: -50,
            left: 20,
            right: 20,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset('assets/home/small_logo.png'),
                    ),
                    SizedBox(width: defaultSize * 1.7),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MY BALANCE',
                          style: GoogleFonts.poppins(
                            fontSize: defaultSize * 1.2,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff98A5AF),
                          ),
                        ),
                        Text(
                          '18,934,244, ZHX',
                          style: GoogleFonts.poppins(
                            fontSize: defaultSize * 1.7,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff43525E),
                          ),
                        ),
                        Text(
                          '~ \$1,221',
                          style: GoogleFonts.poppins(
                            fontSize: defaultSize * 1.2,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff43525E),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row CustomAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/profileImage.png'),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello!',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Text(
              'Jhonathan Bolde',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
        SizedBox(width: 40),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/notification.png',
              color: Colors.white,
            )),
      ],
    );
  }
}

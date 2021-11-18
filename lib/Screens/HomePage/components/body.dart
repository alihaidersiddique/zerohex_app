import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/HomePage/components/header.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Column(
      children: [
        Header(),
        SizedBox(height: 80),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Categories'), CategoryItem(defaultSize)],
        )
      ],
    );
  }

  Container CategoryItem(double defaultSize) {
    return Container(
      width: defaultSize * 20,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image.asset(
                'assets/home/computer_logo.png',
                scale: 1.7,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Website Development',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff43525E),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

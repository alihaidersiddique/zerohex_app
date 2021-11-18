import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../size_config.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    this.button,
  }) : super(key: key);

  final button;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double size = SizeConfig.defaultSize;
    print(size);
    double screenWidth = SizeConfig.screenWidth;
    return Container(
      padding: EdgeInsets.all(10),
      width: screenWidth,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(240, 50), primary: Color(0xff0084FF)),
        child: Text(
          button,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

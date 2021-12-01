import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  HeadingText({
    Key key,
    this.text,
  }) : super(key: key);

  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xff43525E)),
    );
  }
}

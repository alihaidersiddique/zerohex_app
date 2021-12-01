import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/Submission/components/body.dart';

class SubmissionScreen extends StatelessWidget {
  SubmissionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Body(),
    );
  }

  AppBar CustomAppBar() {
    return AppBar(
      title: Text('Submissions',
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff43525E))),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}

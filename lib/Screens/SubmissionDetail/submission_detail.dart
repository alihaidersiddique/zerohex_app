import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/SubmissionDetail/components/body.dart';
import 'package:zerohex_app/Screens/SubmissionDetail/components/bottom_bar.dart';

class SubmissionDetail extends StatelessWidget {
  const SubmissionDetail({Key key}) : super(key: key);

  final serverSide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
      persistentFooterButtons: [BottomBar()],
    );
  }
}

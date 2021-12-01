import 'package:flutter/material.dart';
import 'package:zerohex_app/HomePage/HomePage.dart';
import 'package:zerohex_app/Screens/Account/account.dart';
import 'package:zerohex_app/Screens/Feed/Feed.dart';
import 'package:zerohex_app/Screens/ProjectDetails/project_details.dart';
import 'package:zerohex_app/Screens/Submission/submission.dart';
import 'package:zerohex_app/Screens/SubmitProposal/submit_proposal.dart';
import 'Screens/SubmissionDetail/submission_detail.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(primarySwatch: Colors.grey, fontFamily: "Poppin-Light"),
      home: SubmissionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

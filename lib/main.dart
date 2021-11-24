import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/Login/login.dart';
import 'package:zerohex_app/Screens/SubmitProposal/submit_proposal.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(primarySwatch: Colors.grey, fontFamily: "Poppin-Light"),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

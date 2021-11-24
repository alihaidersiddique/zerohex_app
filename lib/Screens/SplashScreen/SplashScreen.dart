import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zerohex_app/HomePage/HomePage.dart';
import 'package:zerohex_app/Screens/Login/login.dart';

String finalToken;

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getValidationData();
    super.initState();
    // loadData();
  }

  Future getValidationData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var finalToken = prefs.getString('token');
    print(finalToken);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => finalToken == null ? LoginScreen() : HomePage(),
      ),
    );
  }

  // Future<Timer> loadData() async {
  //   return new Timer(Duration(seconds: 5), onDoneLoading);
  // }

  // onDoneLoading() async {
  //   print('==================================');
  //   Future.delayed(const Duration(milliseconds: 1), () {});
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => OnboardingPage(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF324259),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.only(right: 0, top: 0, bottom: 0),
              decoration: new BoxDecoration(
                color: Colors.transparent,
                image: new DecorationImage(
                  image: new AssetImage('assets/Zerohex3.png'),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

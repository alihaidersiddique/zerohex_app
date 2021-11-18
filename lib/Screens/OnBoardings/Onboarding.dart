// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'Onboardingsscreen.dart';
import 'onboarding_model.dart';

class OnboardingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OnboardingPageState();
  }
}

class OnboardingPageState extends State<OnboardingPage>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OnboardingScreen(
        bgColor: Colors.white,
        themeColor: const Color(0xFFf74269),
        pages: pages,
        skipClicked: (value) {
          print(value);
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        getStartedClicked: (value) {
          print(value);
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Get Started clicked"),
          ));
        },
      ),
    );
  }

  final pages = [
    OnboardingModel(
        title: 'Bids come to you',
        description:
            'Compare the submissions that are \npresented to you and have the freedom to \nselect the best one based completely on \nyour preferences.',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/Onboarding1.png'),
    OnboardingModel(
        title: 'Pay for quality',
        description:
            'Pay for work only when it has been \ncompleted and you are 100% satisfied. No \nhidden charges, no pesky loopholes.',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/Onboarding2.png'),
    OnboardingModel(
        title: 'Professionalitys',
        description:
            'Everything you need in order to help your \nbusiness grow is just a click away.',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/Onboarding3.png'),
  ];
}

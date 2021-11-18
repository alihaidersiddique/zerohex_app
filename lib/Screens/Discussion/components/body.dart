import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/Discussion/components/bottom_bar.dart';
import 'package:zerohex_app/Screens/Discussion/components/custom_app_bar.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Expanded(
          child: Column(
            children: [],
          ),
        ),
        BottomBar()
      ],
    );
  }
}

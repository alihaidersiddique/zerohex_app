import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/Discussion/components/body.dart';

class Discussion extends StatelessWidget {
  const Discussion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/ProjectDetailSubmitted/components/body.dart';
import '../ProjectDetailSubmitted/components/bottom_bar.dart';

class ProjectDetailSubmitted extends StatelessWidget {
  const ProjectDetailSubmitted({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
      persistentFooterButtons: [BottomBar()],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/ProjectDetails/Components/body.dart';
import 'package:zerohex_app/Screens/ProjectDetails/components/bottom_bar.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
      persistentFooterButtons: [BottomBar()],
    );
  }
}

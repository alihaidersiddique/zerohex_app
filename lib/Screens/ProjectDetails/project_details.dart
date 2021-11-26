import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/ProjectDetails/components/body.dart';
import 'package:zerohex_app/Screens/ProjectDetails/components/bottom_bar.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({Key key}) : super(key: key);

  final serverSide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(serverSide: serverSide),
      persistentFooterButtons: [BottomBar(serverSide: serverSide)],
    );
  }
}

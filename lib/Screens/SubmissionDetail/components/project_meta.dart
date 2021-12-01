import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTitleDescription extends StatefulWidget {
  ProjectTitleDescription({Key key, @required this.projectDescription})
      : super(key: key);

  final String projectDescription;

  @override
  State<ProjectTitleDescription> createState() =>
      _ProjectTitleDescriptionState();
}

class _ProjectTitleDescriptionState extends State<ProjectTitleDescription> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Divider(thickness: 1),
          Text(widget.projectDescription,
              style: GoogleFonts.poppins(
                  color: Color(0XFF43525E), fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}

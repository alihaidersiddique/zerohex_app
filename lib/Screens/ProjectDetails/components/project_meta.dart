import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/CommonWidgets/heading.dart';

class ProjectTitleDescription extends StatefulWidget {
  ProjectTitleDescription({
    Key key,
    @required this.projectTitle,
    @required this.projectDescription,
  }) : super(key: key);

  final String projectTitle;
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 1),
          TextHeading(text: widget.projectTitle),
          Text(
            widget.projectDescription,
            style: GoogleFonts.poppins(
              color: Color(0XFF43525E),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

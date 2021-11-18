import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
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
          SizedBox(height: 10),
          buildDescription(),
        ],
      ),
    );
  }

  Widget buildDescription() => ReadMoreText(
        widget.projectDescription,
        trimLines: 4,
        colorClickableText: Colors.pink,
        style: GoogleFonts.poppins(
          color: Color(0XFF43525E),
          fontWeight: FontWeight.w400,
        ),
        trimMode: TrimMode.Line,
        trimCollapsedText: 'See more',
        trimExpandedText: 'See less',
        moreStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Color(0xff0084FF),
        ),
        lessStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Color(0xff0084FF),
        ),
      );
}

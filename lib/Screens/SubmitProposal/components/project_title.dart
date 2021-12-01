// ignore_for_file: missing_return

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/widgets/heading_text.dart';

class buildProjectTitle extends StatelessWidget {
  buildProjectTitle({Key key, this.projectTitle}) : super(key: key);

  TextEditingController projectTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: 'Project Title'),
        SizedBox(height: 10),
        TextFormField(
          controller: projectTitle,
          validator: (value) {
            if (value.isEmpty) {
              return 'enter project title';
            }
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid)),
              hintText: 'Describe your project title',
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey)),
        ),
      ],
    );
  }
}

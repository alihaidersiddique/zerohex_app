// ignore_for_file: missing_return

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/heading_text.dart';

class buildDeadlineSubmission extends StatelessWidget {
  buildDeadlineSubmission({
    Key key,
    this.subDeadline,
  }) : super(key: key);

  TextEditingController subDeadline = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: 'Deadline Submission'),
        SizedBox(height: 10),
        TextFormField(
          validator: (value) {
            if (value.isEmpty) {
              return 'enter project title';
            }
          },
          controller: subDeadline,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.calendar_today_outlined, color: Colors.blue)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid)),
              hintText: '22 / 12 / 2020',
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey)),
        ),
      ],
    );
  }
}

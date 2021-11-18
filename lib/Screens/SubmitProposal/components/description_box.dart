// ignore_for_file: must_be_immutable, missing_return

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionBox extends StatelessWidget {
  DescriptionBox({
    Key key,
    this.projectDesc,
  }) : super(key: key);

  TextEditingController projectDesc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'enter project description';
        }
      },
      controller: projectDesc,
      keyboardType: TextInputType.multiline,
      maxLines: 6,
      maxLength: 500,
      decoration: InputDecoration(
        hintMaxLines: 500,
        hintText: 'Add a description',
        hintStyle: GoogleFonts.poppins(
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              style: BorderStyle.solid, color: Color(0xffEBEBEB), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}

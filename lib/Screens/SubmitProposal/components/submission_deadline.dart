// ignore_for_file: missing_return, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/heading_text.dart';

class buildDeadlineSubmission extends StatefulWidget {
  buildDeadlineSubmission({
    Key key,
    this.subDeadline,
  }) : super(key: key);

  TextEditingController subDeadline = TextEditingController();

  @override
  State<buildDeadlineSubmission> createState() =>
      _buildDeadlineSubmissionState();
}

class _buildDeadlineSubmissionState extends State<buildDeadlineSubmission> {
  DateTime pickedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: 'Deadline Submission'),
        SizedBox(height: 10),
        buildProjectTitle(context),
      ],
    );
  }

  TextFormField buildProjectTitle(BuildContext context) {
    return TextFormField(
      readOnly: true,
      keyboardType: TextInputType.none,
      controller: widget.subDeadline,
      validator: (value) {
        if (value.isEmpty) return 'enter project title';
      },
      onTap: () {
        pickDate(context);
        setState(() {
          widget.subDeadline.text = getText();
        });
      },
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                pickDate(context);
                setState(() {
                  widget.subDeadline.text = getText();
                });
              },
              icon: Icon(Icons.calendar_today_outlined, color: Colors.blue)),
          border: OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.solid)),
          hintText: 'select date',
          hintStyle: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey)),
    );
  }

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (newDate == null) return;
    setState(() => pickedDate = newDate);
  }

  String getText() {
    if (pickedDate == null) {
      return 'Select Date';
    } else {
      return '${pickedDate.year}/${pickedDate.month}/${pickedDate.day}';
    }
  }
}

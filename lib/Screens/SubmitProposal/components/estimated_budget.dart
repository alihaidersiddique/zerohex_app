// ignore_for_file: missing_return

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/heading_text.dart';

class buildEstimatedBudget extends StatelessWidget {
  buildEstimatedBudget({Key key, this.valueZHX}) : super(key: key);

  TextEditingController valueZHX = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(
          text: 'Est. total budget',
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'enter estimated total budget';
                  }
                },
                controller: valueZHX,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ZHX',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text('≈'),
            ),
            Expanded(
              flex: 1,
              child: TextFormField(
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '\$',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

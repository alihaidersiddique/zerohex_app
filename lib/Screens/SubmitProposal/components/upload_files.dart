import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/bottom_button.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/heading_text.dart';

class buildUploadFiles extends StatelessWidget {
  //
  buildUploadFiles({
    Key key,
    this.formKey,
    this.projTitle,
    this.projDesc,
    this.estBudget,
    this.subDeadline,
  }) : super(key: key);

  final formKey;

  TextEditingController projTitle = TextEditingController(),
      projDesc = TextEditingController(),
      estBudget = TextEditingController(),
      subDeadline = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: 'Upload files'),
        SizedBox(height: 5),
        Text(
            'Upload all the documents that represent your business, or any images that related based on your preferences.',
            style:
                GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
        SizedBox(height: 20),
        BottomButton(
            formKey: formKey,
            button: 'Submit an Offer',
            projTitle: projTitle,
            projDesc: projDesc,
            estBudget: estBudget,
            subDeadline: subDeadline)
      ],
    );
  }
}

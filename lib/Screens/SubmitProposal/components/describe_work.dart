import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/description_box.dart';
import 'package:zerohex_app/widgets/heading_text.dart';

class buildDescribeWork extends StatelessWidget {
  const buildDescribeWork({Key key, this.desc}) : super(key: key);

  final desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: 'Describe your work'),
        SizedBox(height: 10),
        DescriptionBox(projectDesc: desc)
      ],
    );
  }
}

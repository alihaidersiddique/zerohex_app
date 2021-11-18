import 'package:flutter/material.dart';
import 'package:zerohex_app/CommonWidgets/file_name.dart';
import 'package:zerohex_app/CommonWidgets/heading.dart';
import 'package:zerohex_app/Screens/SubmitOffer/components/body.dart';

class SubmissionFiles extends StatefulWidget {
  const SubmissionFiles({Key key}) : super(key: key);

  @override
  _SubmissionFilesState createState() => _SubmissionFilesState();
}

class _SubmissionFilesState extends State<SubmissionFiles> {
  final submitText = 'Submission Files';

  final submitDate = '10 Nov 2020, 09:30 PM';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 10),
        Divider(thickness: 1),
        TextHeading(text: submitText),
        Text(
          submitDate,
          style: TextStyle(
            color: Color(0xff98A5AF),
          ),
        ),
        SizedBox(height: 10),
        BodyState.previewFile != null
            ? FileName(file: BodyState.previewFile)
            : SizedBox(),
        BodyState.actualFile != null
            ? FileName(file: BodyState.actualFile)
            : SizedBox(),
      ]),
    );
  }
}

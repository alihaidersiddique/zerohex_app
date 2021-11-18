import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/describe_work.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/estimated_budget.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/project_title.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/submission_deadline.dart';
import 'package:zerohex_app/Screens/SubmitProposal/components/upload_files.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final projTitle = TextEditingController(),
      projDesc = TextEditingController(),
      estBudget = TextEditingController(),
      subDeadline = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          buildProjectTitle(projectTitle: projTitle),
          SizedBox(height: 20),
          buildDescribeWork(desc: projDesc),
          buildEstimatedBudget(valueZHX: estBudget),
          SizedBox(height: 20),
          buildDeadlineSubmission(subDeadline: subDeadline),
          SizedBox(height: 20),
          buildUploadFiles(
              formKey: formKey,
              projTitle: projTitle,
              projDesc: projDesc,
              estBudget: estBudget,
              subDeadline: subDeadline)
        ],
      ),
    );
  }
}

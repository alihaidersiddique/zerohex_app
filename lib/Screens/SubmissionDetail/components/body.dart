import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/SubmissionDetail/components/customer_info.dart';
import 'package:zerohex_app/Screens/SubmissionDetail/components/project_dates.dart';
import 'package:zerohex_app/widgets/project_images.dart';
import 'package:zerohex_app/Screens/SubmissionDetail/components/project_meta.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  final customerImage = 'assets/project_details/img5.jpeg';
  final customerName = 'Georgius Revaldo';
  final customerProjects = '24 Total Project';
  final submittedDate = '16 Jul 2021';
  final submissionDeadline = '16 Dec 2021';
  final projectDescription =
      'Here’s the request description. >> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor Here’s the request description. >> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor Here’s the request description. >> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor';
  final projectTitle = 'Redesigning E-Commerce Website and Webapp for 3 days';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProjectImages(),
          CustomerInfo(
              customerImage: customerImage,
              customerName: customerName,
              customerProjects: customerProjects),
          ProjectDates(
              submittedDate: submittedDate,
              submissionDeadline: submissionDeadline),
          ProjectTitleDescription(projectDescription: projectDescription),
        ],
      ),
    );
  }
}

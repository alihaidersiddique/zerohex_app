import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/ProjectDetails/components/customer_info.dart';
import 'package:zerohex_app/Screens/ProjectDetails/components/project_dates.dart';
import 'package:zerohex_app/Screens/ProjectDetails/components/project_images.dart';
import 'package:zerohex_app/Screens/ProjectDetailSubmitted/components/project_description.dart';
import 'package:zerohex_app/Screens/SubmitOffer/components/body.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  final customerImage = 'assets/project_details/img5.jpeg';
  final customerName = 'Georgius Revaldo';
  final customerProjects = '24 Total Project';
  final postedDate = '16 Jul 2021';
  final submissionDeadline = '16 Dec 2021';
  final projectDescription =
      'Here’s the request description. >> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor Here’s the request description. >> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor Here’s the request description. >> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor';
  final projectTitle = 'Redesigning E-Commerce Website and Webapp for 3 days';

  final actualFiles = BodyState.actualFiles;
  final previewFiles = BodyState.previewFiles;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProjectImages(),
          CustomerInfo(
            customerImage: customerImage,
            customerName: customerName,
            customerProjects: customerProjects,
          ),
          ProjectDates(
            postedDate: postedDate,
            submissionDeadline: submissionDeadline,
          ),
          ProjectTitleDescription(
            projectTitle: projectTitle,
            projectDescription: projectDescription,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProjectDates extends StatelessWidget {
  const ProjectDates({
    Key key,
    this.postedDate,
    this.submissionDeadline,
  }) : super(key: key);

  final postedDate, submissionDeadline;
  final datePostTitle = 'Posted:';
  final dateSubmissionTitle = 'Deadline Submission:';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, top: 20, left: 20, bottom: 10),
      child: Row(
        children: [
          projectDates(datePostTitle, postedDate),
          SizedBox(width: 40),
          projectDates(dateSubmissionTitle, submissionDeadline),
        ],
      ),
    );
  }

  Column projectDates(String dateTitle, String date) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dateTitle,
          style: TextStyle(color: Color(0XFF98A5AF), fontSize: 14),
        ),
        SizedBox(height: 5),
        Text(
          date,
          style: TextStyle(
              color: Color(0XFF0084FF),
              fontSize: 16,
              fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}

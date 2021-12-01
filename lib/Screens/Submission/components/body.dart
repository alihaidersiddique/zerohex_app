import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/SubmissionDetail/submission_detail.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  final submissionsImages = [
    'assets/submissions/img1.png',
    'assets/submissions/img2.png',
    'assets/submissions/img3.png',
    'assets/submissions/img4.png',
    'assets/submissions/img5.png',
    'assets/submissions/img6.png',
  ];

  final submissionsTitle = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed...',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed...',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed...',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed...',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed...',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed...',
  ];

  final submissionsDate = [
    '22 / 12 / 2020',
    '10 / 05 / 2019',
    '05 / 02 / 2015',
    '14 / 07 / 2018',
    '25 / 09 / 2021',
    '15 / 03 / 2016',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: submissionsImages.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => onPressed(context),
          child: EachTile(context, index),
        );
      },
    );
  }

  Container EachTile(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 170,
      width: MediaQuery.of(context).size.width * 3,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [buildTileImage(index), buildTileText(index)],
        ),
      ),
    );
  }

  Expanded buildTileText(int index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              submissionsTitle[index],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff43525E)),
            ),
            SizedBox(height: 20),
            Text(
              'Submitted ${submissionsDate[index]}',
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff98A5AF)),
            )
          ],
        ),
      ),
    );
  }

  Image buildTileImage(int index) {
    return Image.asset(submissionsImages[index],
        fit: BoxFit.cover, width: 120, height: 140);
  }

  onPressed(final context) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => SubmissionDetail()));
  }
}

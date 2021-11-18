import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Models/SubmitOffer/file.dart';
import 'package:zerohex_app/Screens/SubmitOffer/submit_offer.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final deliverAgain = 'Deliver Again';

  final submitOffer = 'Submit Offer';

  final bigPrice = '11,467 ZHX';

  final smallPrice = '-\$220';

  final budgetText = 'Budget:';

  static List<File> actualFiles = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                budgetText,
                style: GoogleFonts.poppins(
                  color: Color(0xff43525E),
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 5.0),
              Row(
                children: [
                  Text(
                    bigPrice,
                    style: TextStyle(
                      color: Color(0xff0084FF),
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    smallPrice,
                    style: TextStyle(
                      color: Color(0xff98A5AF),
                    ),
                  )
                ],
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubmitOffer(),
                ),
              );
              // showModalBottomSheet(
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(30),
              //         topRight: Radius.circular(30),
              //       ),
              //     ),
              //     context: context,
              //     builder: (context) {
              //       return Padding(
              //         padding: const EdgeInsets.all(15.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 TextHeading(
              //                     text: 'Upload files',
              //                     fontWeight: FontWeight.w700),
              //                 IconButton(
              //                   onPressed: () {
              //                     Navigator.pop(context);
              //                   },
              //                   icon: Icon(Icons.close,
              //                       color: Color(0xff43525E), size: 32),
              //                 )
              //               ],
              //             ),
              //             SizedBox(height: 10),
              //             Text('You need to upload your work'),
              //             SizedBox(height: 15),
              //             // upload actual files button
              //             SizedBox(
              //               height: 45,
              //               child: OutlinedButton.icon(
              //                 onPressed: () async {
              //                   var result = await FilePicker.platform
              //                       .pickFiles(allowMultiple: true);

              //                   if (result == null) return;

              //                   setState(() {
              //                     actualFiles = result.names
              //                         .map((name) => File(name))
              //                         .toList();
              //                   });

              //                   // await savefilePermanently(previewFiles);
              //                 },
              //                 icon: Icon(
              //                   Icons.attach_file,
              //                   color: Color(0xFF43525E),
              //                 ),
              //                 label: Text(
              //                   'Upload Actual Files',
              //                   style: GoogleFonts.poppins(
              //                       color: Color(0xFF43525E)),
              //                 ),
              //                 style: OutlinedButton.styleFrom(
              //                   side: BorderSide(
              //                       width: 1.0, color: Color(0xFF98A5AF)),
              //                 ),
              //               ),
              //             ),
              //             for (actualFile in actualFiles)
              //               FileName(file: actualFile),
              //             SizedBox(height: 20),
              //             BottomButton(button: 'Deliver Now')
              //           ],
              //         ),
              //       );
              //     });
              // : Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => SubmitOffer(),
              //     ));
            },
            child: Text(
              actualFiles.isNotEmpty ? deliverAgain : submitOffer,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xff0084FF),
              ),
            ),
          )
        ],
      ),
    );
  }
}

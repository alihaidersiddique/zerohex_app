import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:zerohex_app/CommonWidgets/file_name.dart';
import 'package:zerohex_app/CommonWidgets/heading.dart';
import 'package:zerohex_app/Models/SubmitOffer/file.dart';
import 'package:zerohex_app/Screens/SubmitOffer/components/description_box.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  State<Body> createState() => BodyState();
}

class BodyState extends State<Body> {
  static List<File> previewFiles = [];
  static List<File> actualFiles = [];

  static var actualFile, previewFile;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeading(
                text: 'Describe your work', fontWeight: FontWeight.w700),
            SizedBox(height: 15),
            DescriptionBox(),
            SizedBox(height: 20),
            TextHeading(text: 'Upload files', fontWeight: FontWeight.w700),
            SizedBox(height: 10),
            Text('You need to upload your work'),
            SizedBox(height: 15),
            // upload preview files button
            SizedBox(
              height: 45,
              child: OutlinedButton.icon(
                onPressed: () async {
                  var result =
                      await FilePicker.platform.pickFiles(allowMultiple: true);

                  if (result == null) return;

                  setState(() {
                    previewFiles =
                        result.names.map((name) => File(name)).toList();
                  });

                  // await savefilePermanently(previewFiles);
                },
                icon: Icon(
                  Icons.attach_file,
                  color: Color(0xFF43525E),
                ),
                label: Text(
                  'Upload Preview',
                  style: GoogleFonts.poppins(color: Color(0xFF43525E)),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1.0, color: Color(0xFF98A5AF)),
                ),
              ),
            ),
            for (previewFile in previewFiles) FileName(file: previewFile),
            SizedBox(height: 20),
            // upload actual files button
            SizedBox(
              height: 45,
              child: OutlinedButton.icon(
                onPressed: () async {
                  var result =
                      await FilePicker.platform.pickFiles(allowMultiple: true);

                  if (result == null) return;

                  setState(() {
                    actualFiles =
                        result.names.map((name) => File(name)).toList();
                  });
                },
                icon: Icon(
                  Icons.attach_file,
                  color: Color(0xFF43525E),
                ),
                label: Text(
                  'Upload Actual Files',
                  style: GoogleFonts.poppins(color: Color(0xFF43525E)),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1.0, color: Color(0xFF98A5AF)),
                ),
              ),
            ),
            for (actualFile in actualFiles) FileName(file: actualFile),
          ],
        ),
      ),
    );
  }

  Future<File> savefilePermanently(PlatformFile file) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final newFile = File('${appStorage.path}/${file.name}');
    return File(file.path).copy(newFile.path);
  }
}

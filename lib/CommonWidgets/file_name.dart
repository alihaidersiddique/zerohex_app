import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zerohex_app/Models/SubmitOffer/file.dart';

class FileName extends StatelessWidget {
  const FileName({
    Key key,
    @required this.file,
  }) : super(key: key);

  final File file;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Icon(Icons.file_present),
          SizedBox(width: 10),
          Expanded(child: Text(file.name.split(Platform.pathSeparator).last))
        ],
      ),
    );
  }
}

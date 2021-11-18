import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: 6,
      maxLength: 500,
      decoration: InputDecoration(
        hintMaxLines: 500,
        hintText: 'Add a description',
        border: OutlineInputBorder(
          borderSide: BorderSide(
              style: BorderStyle.solid, color: Color(0xffEBEBEB), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}

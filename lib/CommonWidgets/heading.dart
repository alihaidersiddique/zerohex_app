import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  const TextHeading({Key key, @required this.text, this.fontWeight})
      : super(key: key);

  final text;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0XFF43525D),
        fontSize: 18,
        fontWeight: fontWeight,
      ),
    );
  }
}

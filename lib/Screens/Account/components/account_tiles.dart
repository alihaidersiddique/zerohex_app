import 'package:flutter/material.dart';
import '../../../size_config.dart';

class AccountTile extends StatelessWidget {
  AccountTile(
      {Key key,
      this.title,
      this.press,
      this.topLeft,
      this.topRight,
      this.bottomLeft,
      this.bottomRight})
      : super(key: key);
  final String title;
  final Function press;
  final bool topLeft, topRight, bottomLeft, bottomRight;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: topLeft == true ? Radius.circular(10) : Radius.circular(0),
            topRight:
                topRight == true ? Radius.circular(10) : Radius.circular(0),
            bottomLeft:
                bottomLeft == true ? Radius.circular(10) : Radius.circular(0),
            bottomRight:
                bottomRight == true ? Radius.circular(10) : Radius.circular(0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: (defaultSize * (1.6)), //16
                    color: Color(0xFF4F5D67),
                    fontWeight: FontWeight.w400),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: defaultSize * 1.6,
                color: Color(0xFF43525D),
              )
            ],
          ),
        ),
      ),
    );
  }
}

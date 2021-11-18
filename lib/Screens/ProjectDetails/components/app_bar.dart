import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 10.0, top: 12.0),
      child: Positioned(
        width: screenWidth,
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: ClipOval(
            child: Container(
              color: Color(0xff324259).withOpacity(0.7),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  size: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          actions: [
            ClipOval(
              child: Container(
                width: 55,
                color: Color(0xff324259).withOpacity(0.7),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share_outlined,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

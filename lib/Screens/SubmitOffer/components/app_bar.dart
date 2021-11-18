import 'package:flutter/material.dart';
import 'package:zerohex_app/CommonWidgets/heading.dart';
import 'package:zerohex_app/Screens/ProjectDetailSubmitted/project_detail_submitted.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CustomAppBar({
    this.height = kToolbarHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      child: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProjectDetailSubmitted(),
            ),
          ),
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 22,
            color: Color(0xff324259),
          ),
        ),
        title: TextHeading(text: 'Submit An Offer'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

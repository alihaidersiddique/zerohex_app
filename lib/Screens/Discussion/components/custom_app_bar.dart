import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8F8F8),
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/submissions/img2.png'),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('This discussion is related to'),
                SizedBox(height: 10),
                Text(
                  'Redesigning E-Commerce Website WebsiteWebsite',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
    );
  }
}

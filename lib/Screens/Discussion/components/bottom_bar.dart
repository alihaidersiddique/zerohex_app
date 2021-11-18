import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/SubmitOffer/components/bottom_button.dart';
import 'package:zerohex_app/Screens/SubmitOffer/components/description_box.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your message ...',
              border: InputBorder.none,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.face_outlined,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.attach_file_outlined,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {
                      bottomSheet(context);
                    },
                    child: Text('Offer a Revision')),
              )),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<dynamic> bottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textWidget('Revision Form', 18.0),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Color(0xff43525E),
                            size: 32,
                          ))
                    ],
                  ),
                  SizedBox(height: 10),
                  textWidget('Description'),
                  SizedBox(height: 10),
                  DescriptionBox(),
                  textWidget('Est. total budget'),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        currencyConverter('ZHX', '11,467'),
                        Text(
                          '≈',
                          textScaleFactor: 1.5,
                          style: TextStyle(
                            color: Color(0xff43525E),
                          ),
                        ),
                        currencyConverter('\$', '145'),
                      ],
                    ),
                  ),
                  BottomButton(button: 'Offer Now')
                ],
              ));
        });
  }

  Container currencyConverter(final txt1, final txt2) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text(
              txt1,
              style: GoogleFonts.poppins(
                color: Color(0xff98A5AF),
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 60),
            Text(
              txt2,
              style: GoogleFonts.poppins(
                color: Color(0xff43525E),
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffEBEBEB)),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }

  Text textWidget(final text, [final size]) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: Color(0xff43525E),
        fontWeight: FontWeight.w600,
        fontSize: size == null ? 16.0 : size,
      ),
    );
  }
}

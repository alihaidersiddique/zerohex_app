import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/SubmitOffer/submit_offer.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final btnP2P = 'Proceed to Pay';
  final bigPrice = '11,467 ZHX';
  final smallPrice = '-\$220';
  final priceText = 'Price:';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buildBottomPrice(), buildBottomButton(btnP2P, () {})],
      ),
    );
  }

  Column buildBottomPrice() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        priceText,
        style: GoogleFonts.poppins(color: Color(0xff43525E), fontSize: 10),
      ),
      SizedBox(height: 5.0),
      Row(
        children: [
          Text(
            bigPrice,
            style: TextStyle(
                color: Color(0xff0084FF),
                fontWeight: FontWeight.w800,
                fontSize: 16),
          ),
          SizedBox(width: 5),
          Text(
            smallPrice,
            style: TextStyle(color: Color(0xff98A5AF)),
          )
        ],
      )
    ]);
  }

  ElevatedButton buildBottomButton(final btnText, void Function() onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(btnText,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600)),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff0084FF))),
    );
  }

  onPressedNavigation() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SubmitOffer()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final deliverProject = 'Deliver Project';

  final bigPrice = '11,467 ZHX';

  final smallPrice = '-\$220';

  final budgetText = 'Budget:';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildBudget(),
          buildButton(),
        ],
      ),
    );
  }

  Widget buildBudget() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            budgetText,
            style: GoogleFonts.poppins(
              color: Color(0xff43525E),
              fontSize: 10,
            ),
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(
                bigPrice,
                style: TextStyle(
                  color: Color(0xff0084FF),
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 5),
              Text(
                smallPrice,
                style: TextStyle(
                  color: Color(0xff98A5AF),
                ),
              )
            ],
          )
        ],
      );

  Widget buildButton() => ElevatedButton(
        onPressed: () {},
        child: Text(
          deliverProject,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color(0xff0084FF),
          ),
        ),
      );
}

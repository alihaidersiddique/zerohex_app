// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zerohex_app/Services/ApiServices/proposal.dart';

class BottomButton extends StatefulWidget {
  BottomButton(
      {Key key,
      this.button,
      this.formKey,
      this.projTitle,
      this.projDesc,
      this.estBudget,
      this.subDeadline})
      : super(key: key);

  final button, formKey;

  TextEditingController projTitle = TextEditingController(),
      projDesc = TextEditingController(),
      estBudget = TextEditingController(),
      subDeadline = TextEditingController();
  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    return buildButton(widget.formKey);
  }

  var token;

  Container buildButton(final formKey) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      child: ElevatedButton(
        onPressed: () {
          final isValid = formKey.currentState.validate();
          if (isValid) {
            Proposal().submitProposalApiCall(
                widget.projTitle.text,
                widget.projDesc.text,
                widget.estBudget.text,
                widget.subDeadline.text,
                token);
          }
        },
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(240, 50), primary: Color(0xff0084FF)),
        child: Text(
          widget.button,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  void getToken() async {
    final pref = await SharedPreferences.getInstance();
    token = pref.getString('token');
    print(token);
  }

  @override
  void initState() {
    getToken();
    super.initState();
  }
}

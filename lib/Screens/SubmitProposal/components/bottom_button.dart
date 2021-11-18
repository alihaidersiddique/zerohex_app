// ignore_for_file: must_be_immutable

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zerohex_app/Screens/Feed/Feed.dart';
import '../../../size_config.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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
  final url =
      Uri.parse('https://stg-api.zerohex.market/api/requests/create_request');

  var errorMsg, jsonResponse;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double size = SizeConfig.defaultSize;
    print(size);
    double screenWidth = SizeConfig.screenWidth;
    return Container(
      width: screenWidth,
      child: ElevatedButton(
        onPressed: () {
          final isValid = widget.formKey.currentState.validate();
          if (isValid) {
            sendData(widget.projTitle.text, widget.projDesc.text,
                widget.estBudget.text, widget.subDeadline.text);
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

  void sendData(String projTitle, projDesc, estBudget, subDeadline) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    //
    Map data = {
      'title': 'projTitle',
      'description': 'projDesc',
      'total_budget': 'estBudget',
      'submission_deadline': 'subDeadline'
    };
    var response = await http.post(url, body: data, headers: {
      'Authorization': 'Bearer $token',
    });
    print('my resposne: $jsonResponse ');

    //
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        print("new project posted");
        print(jsonResponse);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FeedPage(),
            ));
      } else {
        errorMsg = response.body;
        print("The error message is: ${response.body}");
      }
    }
  }
}

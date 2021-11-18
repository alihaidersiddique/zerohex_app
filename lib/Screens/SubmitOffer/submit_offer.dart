import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/SubmitOffer/components/app_bar.dart';
import 'package:zerohex_app/Screens/SubmitOffer/components/body.dart';
import 'package:zerohex_app/Screens/SubmitOffer/components/bottom_button.dart';

class SubmitOffer extends StatelessWidget {
  const SubmitOffer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: Body(),
        persistentFooterButtons: [BottomButton(button: 'Submit An Offer')],
      ),
    );
  }
}

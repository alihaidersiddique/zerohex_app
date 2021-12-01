import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/Account/Components/switch_field.dart';

import '../../../size_config.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({Key key}) : super(key: key);

  final serverSide = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [topCurve(), customAppBar(), switchModeButton(serverSide)],
    );
  }

  Positioned switchModeButton(bool serverSide) {
    return Positioned(
        bottom: getProportionateScreenWidth(-25),
        child: SwitchField(serverSide: serverSide));
  }

  Column customAppBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: getProportionateScreenHeight(10)),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profileImage.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello!',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    'Jhonathan Bolde',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(width: 40),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/notification.png',
                    color: Colors.white,
                  )),
            ],
          ),
        )
      ],
    );
  }

  Container topCurve() {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(170),
      decoration: BoxDecoration(
        color: Color(0xFF324259),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.0),
          bottomRight: Radius.circular(60.0),
        ),
      ),
    );
  }
}

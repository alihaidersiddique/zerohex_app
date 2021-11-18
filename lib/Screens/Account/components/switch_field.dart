import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SwitchField extends StatefulWidget {
  const SwitchField({
    Key key,
  }) : super(key: key);

  @override
  State<SwitchField> createState() => _SwitchFieldState();
}

class _SwitchFieldState extends State<SwitchField> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    final size = SizeConfig.defaultSize;
    return Container(
      width: getProportionateScreenWidth(368),
      height: getProportionateScreenWidth(60),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
            spreadRadius: -2,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 20.0, left: 20.0, bottom: 20.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Switch to client',
              style: TextStyle(
                color: Color(0xFF43525D),
                fontSize: size * 3,
                fontWeight: FontWeight.bold,
              ),
            ),
            buildSwitch()
          ],
        ),
      ),
    );
  }

  Widget buildSwitch() => Switch.adaptive(
        activeColor: Color(0xFF324259),
        inactiveTrackColor: Color(0xFF324259),
        inactiveThumbColor: Colors.white70,
        value: value,
        onChanged: (value) => setState(() => this.value = value),
      );
}

import 'package:flutter/material.dart';

class CopyField extends StatelessWidget {
  const CopyField({Key key, this.defaultSize, this.press, this.walletId})
      : super(key: key);

  final double defaultSize;
  final Function press;
  final String walletId;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Registered Wallet',
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  walletId,
                  style: TextStyle(
                      fontSize: (defaultSize * (1.6)), //16
                      color: Color(0xFF4F5D67),
                      fontWeight: FontWeight.w400),
                ),
                IconButton(
                  onPressed: press,
                  icon: Icon(
                    Icons.copy,
                    size: defaultSize * 2.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

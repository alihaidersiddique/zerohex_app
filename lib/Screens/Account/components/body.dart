import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/Account/Components/account_header.dart';
import 'package:zerohex_app/Screens/Account/Components/account_tiles.dart';
import 'package:flutter/services.dart';
import 'package:zerohex_app/Screens/Account/Components/copy_field.dart';
import 'package:zerohex_app/widgets/heading_text.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //
  final String walletId = '0x750C2982c5fF.....e8c8Fa50deBCFf';
  final String accountName = 'Jhonathan Bolde';
  final String accountEmail = 'Jhonathanb@gmail.com';
  final String accountJob = 'UI Designer';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFFEFF0F4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountHeader(),
            SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CopyField(
                    defaultSize: defaultSize,
                    press: _copyToClipboard,
                    walletId: walletId,
                  ),
                  SizedBox(height: 10),
                  HeadingText(text: 'General'),
                  SizedBox(height: 10),
                  AccountTile(
                    title: accountName,
                    press: () {},
                    topLeft: true,
                    topRight: true,
                  ),
                  AccountTile(title: accountEmail, press: () {}),
                  AccountTile(
                    title: accountJob,
                    press: () {},
                    bottomLeft: true,
                    bottomRight: true,
                  ),
                  SizedBox(height: 10),
                  HeadingText(text: 'Security'),
                  SizedBox(height: 5),
                  AccountTile(
                    title: 'Privacy Policy',
                    press: () {},
                    topLeft: true,
                    topRight: true,
                  ),
                  AccountTile(
                    title: 'Help Center',
                    press: () {},
                    bottomLeft: true,
                    bottomRight: true,
                  ),
                  SizedBox(height: defaultSize * 0.5),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: buildText('Log Out'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text buildText(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Colors.red,
      ),
    );
  }

  // This function is triggered when the copy icon is pressed
  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: walletId));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Copied to clipboard'),
    ));
  }
}

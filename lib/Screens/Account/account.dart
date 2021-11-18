import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/Account/components/body.dart';
import 'package:zerohex_app/Screens/Account/components/bottom_bar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomBar(),
    );
  }
}

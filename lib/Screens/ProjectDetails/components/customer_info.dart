import 'package:flutter/material.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({
    Key key,
    this.customerImage,
    this.customerName,
    this.customerProjects,
  }) : super(key: key);

  final customerImage;
  final customerName;
  final customerProjects;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Color(0xFFF8F8F8),
      leading: ClipOval(child: Image.asset(customerImage)),
      title: Text(customerName),
      subtitle: Text(customerProjects),
    );
  }
}

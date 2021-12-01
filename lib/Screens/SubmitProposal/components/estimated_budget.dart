// ignore_for_file: missing_return, must_be_immutable, unused_import
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_converter/Currency.dart';
import 'package:money_converter/money_converter.dart';
import 'package:zerohex_app/widgets/heading_text.dart';
import 'package:http/http.dart' as http;

class buildEstimatedBudget extends StatefulWidget {
  buildEstimatedBudget({Key key, this.valueZHX}) : super(key: key);

  TextEditingController valueZHX = TextEditingController();
  TextEditingController valueUSD = TextEditingController();

  @override
  State<buildEstimatedBudget> createState() => _buildEstimatedBudgetState();
}

class _buildEstimatedBudgetState extends State<buildEstimatedBudget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: 'Est. total budget'),
        SizedBox(height: 10),
        Row(
          children: [
            buildUserTextField(),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text('≈'),
            ),
            buildConverionTextField(),
          ],
        )
      ],
    );
  }

  Expanded buildConverionTextField() {
    return Expanded(
      flex: 1,
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: widget.valueUSD,
        readOnly: true,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '\$',
          hintStyle: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
      ),
    );
  }

  Expanded buildUserTextField() {
    return Expanded(
      flex: 1,
      child: TextFormField(
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value.isEmpty) {
            return 'enter estimated total budget';
          }
        },
        onChanged: (value) => convCurrency(),
        controller: widget.valueZHX,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'ZHX',
          hintStyle: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
      ),
    );
  }

  void convCurrency() async {
    var usdConvert;
    if (widget.valueZHX.text.isEmpty) {
      setState(() {
        widget.valueUSD.text = '';
      });
    } else {
      usdConvert = await MoneyConverter.convert(
          Currency(Currency.EUR, amount: double.parse(widget.valueZHX.text)),
          Currency(Currency.USD));
    }

    setState(() => widget.valueUSD.text = usdConvert.toString());
  }
}

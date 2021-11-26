// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:zerohex_app/HomePage/HomePage.dart';
import 'package:zerohex_app/Screens/Login/login.dart';
import '../../constants.dart';

class Auth {
  //
  void loginApiCall(final mobile, final pass, final context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var jsonResponse, errorMsg;
    final url = Uri.parse("$apiAddress/users/login_signupByEmail");

    Map data = {'email': mobile, 'password': pass};
    var response = await http.post(url, body: data);

    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        print(jsonResponse['token']);
        print('login successfully');
        prefs.setString('token', jsonResponse['token']);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        errorMsg = response.body;
        print("The error message is: ${response.body}");
      }
    }
  }

  void signUpApiCall(firstName, lastName, email, pass, desig, context) async {
    //
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var errorMsg;
    final url = Uri.parse("$apiAddress/users/login_signupByEmail");

    final data = {
      'email': email,
      'password': pass,
      'first_name': firstName,
      'last_name': lastName,
      'designation': 'designation'
    };

    var response = await http.post(url, body: data);

    if (response.statusCode == 201) {
      var jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        prefs.setString("token", jsonResponse['token']);
        print('registered successfully');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ));
      }
    } else {
      errorMsg = response.body;
      print("The error message is: ${response.body}");
    }
  }
}

// ignore_for_file: avoid_print, avoid_init_to_null, prefer_typing_uninitialized_variables, non_constant_identifier_names, unused_local_variable, missing_return

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zerohex_app/Screens/Login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // controllers
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final designationController = TextEditingController();

  bool isPasswordNotVisible = true;

  var errorMsg;

  final formKey = GlobalKey<FormState>();
  final url =
      Uri.parse("https://stg-api.zerohex.market/api/users/login_signupByEmail");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            const SizedBox(height: 40),
            buildFirstName(),
            const SizedBox(height: 20),
            buildLastName(),
            const SizedBox(height: 20),
            buildEmail(),
            const SizedBox(height: 20),
            buildPassword(),
            const SizedBox(height: 20),
            buildSignUpButton()
          ],
        ),
      ),
    );
  }

  TextFormField buildFirstName() {
    return TextFormField(
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value.isEmpty) {
          return 'enter first name';
        }
      },
      controller: firstNameController,
      decoration: const InputDecoration(
        label: Text('First Name'),
        prefixIcon: Icon(Icons.person),
        hintText: 'Mr. John',
      ),
    );
  }

  TextFormField buildLastName() {
    return TextFormField(
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value.isEmpty) {
          return 'enter last name';
        }
      },
      controller: lastNameController,
      decoration: const InputDecoration(
        label: Text('Last Name'),
        prefixIcon: Icon(Icons.person),
        hintText: 'Saylin',
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: passwordController,
      validator: (value) {
        if (value.isEmpty) {
          return 'enter password';
        }
      },
      obscureText: isPasswordNotVisible,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.password),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isPasswordNotVisible = !isPasswordNotVisible;
            });
          },
          icon: isPasswordNotVisible
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility_off),
        ),
        label: const Text('Password'),
      ),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      validator: (value) {
        const pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
        final regExp = RegExp(pattern); // uni code form mai reg exp dedi hai

        if (value.isEmpty) {
          return 'enter an email';
        } else if (!regExp.hasMatch(value)) {
          return 'enter valid email';
        }
      },
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.email),
        label: Text('Email'),
        hintText: 'xyz@email.com',
      ),
    );
  }

  ElevatedButton buildSignUpButton() {
    return ElevatedButton(
      onPressed: () {
        final isValid = formKey.currentState.validate();
        if (isValid) {
          print("signup pressed");
          Register(
            firstNameController.text,
            lastNameController.text,
            emailController.text,
            passwordController.text,
            designationController.text,
          );
        }
      },
      child: const Text('Sign Up'),
    );
  }

  void Register(String firstName, lastName, email, pass, designation) async {
    //
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //
    final data = {
      'email': email,
      'password': pass,
      'first_name': firstName,
      'last_name': lastName,
      'designation': 'designation',
    };
    //
    var response = await http.post(url, body: data);
    //
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        prefs.setString("token", jsonResponse['token']);
        print('registered successfully');
        Get.to(const LoginPage());
      }
    } else {
      errorMsg = response.body;
      print("The error message is: ${response.body}");
    }
  }
}

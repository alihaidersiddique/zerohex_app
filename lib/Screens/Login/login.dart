// ignore_for_file: avoid_init_to_null, avoid_print, prefer_typing_uninitialized_variables, unused_field, missing_return

import 'package:flutter/material.dart';
import 'package:zerohex_app/Screens/SignUp/signUp.dart';
import 'package:zerohex_app/Services/ApiServices/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool isPasswordNotVisible = true;
  var errorMsg, jsonResponse;
  final url =
      Uri.parse("https://stg-api.zerohex.market/api/users/login_signupByEmail");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            const SizedBox(height: 40),
            buildEmail(),
            const SizedBox(height: 20),
            buildPassword(),
            const SizedBox(height: 20),
            buildLoginButton(),
            buildCreateAccount(context),
          ],
        ),
      ),
    );
  }

  TextButton buildCreateAccount(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUpScreen())),
      child: const Text('Not Registered ? Create an account'),
    );
  }

  ElevatedButton buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        final isValid = formKey.currentState.validate();
        if (isValid) {
          print("Login pressed");
          Auth().loginApiCall(
              emailController.text, passwordController.text, context);
        }
      },
      child: const Text('Login'),
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
}

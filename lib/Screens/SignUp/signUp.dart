// ignore_for_file: avoid_print, avoid_init_to_null, prefer_typing_uninitialized_variables, non_constant_identifier_names, unused_local_variable, missing_return
import 'package:flutter/material.dart';
import 'package:zerohex_app/Services/ApiServices/auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // controllers
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final designationController = TextEditingController();

  bool isPasswordNotVisible = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
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
      child: const Text('Sign Up'),
      onPressed: () {
        final isValid = formKey.currentState.validate();
        if (isValid) {
          print("signup data is valid");
          Auth().signUpApiCall(
            firstNameController.text,
            lastNameController.text,
            emailController.text,
            passwordController.text,
            designationController.text,
            context,
          );
          print('data is passed to the database');
        }
      },
    );
  }
}

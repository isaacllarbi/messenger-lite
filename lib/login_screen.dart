import 'package:flutter/material.dart';
import 'package:messenger_lite/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static final String id = 'login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 200),
              Icon(Icons.message, size: 75.0),
              SizedBox(height: 20),
              buildIntro(),
              SizedBox(height: 10),
              buildEmailInput(),
              SizedBox(height: 10),
              buildPasswordInput(),
              SizedBox(height: 30),
              buildLogin(context),
              SizedBox(height: 10),
              buildCreateAccount(context),
              SizedBox(height: 30),
              buildForgotPassword(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildIntro() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Text(
          'Log in with your phone number or Facebook account.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email or phone number',
      ),
    );
  }

  TextFormField buildPasswordInput() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.remove_red_eye),
          color: Colors.black,
        ),
      ),
    );
  }

  InkWell buildLogin(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushReplacementNamed(HomeScreen.id),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: Text(
            'LOG IN',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white54,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10),
            right: Radius.circular(10),
          ),
        ),
      ),
    );
  }

  InkWell buildCreateAccount(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: Text(
            'CREATE ACCOUNT',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10),
            right: Radius.circular(10),
          ),
        ),
      ),
    );
  }

  InkWell buildForgotPassword() {
    return InkWell(
      onTap: () => {},
      child: Container(
        child: Text(
          'FORGOT PASSWORD',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

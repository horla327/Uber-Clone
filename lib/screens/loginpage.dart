// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:uber_clone/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:uber_clone/screens/registrationpage.dart';
import 'package:uber_clone/widgets/TaxiButton.dart';

class LoginPage extends StatelessWidget {
  static const String id = "login";
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Image(
                  alignment: Alignment.center,
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage('images/logo.png'),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Sign In as a Rider',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontFamily: 'Brand-Bold'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email address',
                          labelStyle: TextStyle(
                              fontSize: 14.0, fontFamily: 'Brand-Regular'),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Brand-Regular',
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TaxiButton(
                          color: BrandColors.colorGreen,
                          onPressed: () {},
                          title: 'LOGIN')
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RegistrationPage.id, (route) => false);
                  },
                  child: Text(
                    'Don\'t have an account, sign up here',
                    style: TextStyle(fontFamily: 'Brand-Regular'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

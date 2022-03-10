// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/brand_colors.dart';
import 'package:uber_clone/widgets/TaxiButton.dart';
import 'package:uber_clone/screens/loginpage.dart';

class RegistrationPage extends StatelessWidget {
  static const String id = "register";
  const RegistrationPage({Key? key}) : super(key: key);

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
                  'Create a Rider\'s Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontFamily: 'Brand-bold'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email address',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
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
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Phone number',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
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
                        title: 'REGISTER',
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, LoginPage.id, (route) => false);
                  },
                  child: Text('Already have a RIDER account? Log in'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

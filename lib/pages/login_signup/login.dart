import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylo_fashion/pages/login_signup/forgot_password.dart';
import 'package:stylo_fashion/pages/login_signup/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  DateTime currentBackPressTime;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: WillPopScope(
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 100.0),
                  Image.asset(
                    'assets/logo/stylo_transparent.png',
                    height: 80.0,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    width: width - 40.0,
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 20.0, right: 10.0, left: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1.5,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.email),
                                border: InputBorder.none,
                                fillColor: Colors.red,
                                focusColor: Colors.red,
                                hoverColor: Colors.red),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(Icons.vpn_key),
                              border: InputBorder.none,
                              fillColor: Colors.red,
                              focusColor: Colors.red,
                              hoverColor: Colors.red,
                            ),
                            obscureText: true,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: ForgotPasswordPage()));
                          },
                          child: Text(
                            'FORGOT PASSWORD?',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Jost',
                              fontSize: 16.0,
                              letterSpacing: 0.7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          height: 45.0,
                          width: 140.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.redAccent,
                            color: Colors.red,
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: SignupPage()));
                              },
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Jost',
                                    fontSize: 16.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: SignupPage()));
                          },
                          child: Text(
                            'CREATE ACCOUNT',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Jost',
                              fontSize: 17.0,
                              letterSpacing: 0.7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
      return false;
    } else {
      return true;
    }
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_admin_panel/constant.dart/colors/colors.dart';

import 'package:food_delivery_admin_panel/screens/homepage/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 10),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Image(
            image: AssetImage("assets/images/logo.png"),
            width: MediaQuery.of(context).size.width*.8,
          ),
        ),
      ),
    );
  }
}

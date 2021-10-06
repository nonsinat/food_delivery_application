import 'package:flutter/material.dart';
import 'package:food_delivery_admin_panel/screens/splash_screen.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}


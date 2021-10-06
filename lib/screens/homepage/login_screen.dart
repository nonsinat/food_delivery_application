import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:food_delivery_admin_panel/screens/homepage/auth/sign_in.dart';
import 'package:food_delivery_admin_panel/screens/homepage/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Sign in to continue",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/logo.png",
                width: MediaQuery.of(context).size.width * .5,
              ),
              SizedBox(
                height: 30,
              ),
              SignInButton(
                Buttons.Apple,
                onPressed: () {},
                padding: EdgeInsets.all(5),
              ),
              SizedBox(
                height: 20,
              ),
              SignInButton(
                Buttons.Google,
                onPressed: () {
                  SignInAuth().signInWithGoogle().then(
                        (value) => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomePage(),
                          ),
                        ),
                      );
                },
                padding: EdgeInsets.all(5),
              ),
              SizedBox(
                height: 40,
              ),
              Spacer(),
              Text(
                "By signing you are agreeing to our",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.grey,
                    ),
              ),
              Text(
                "Terms and Privacy Policy",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.grey,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

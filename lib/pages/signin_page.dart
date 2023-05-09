import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealthapp/pages/signup_page.dart';
import 'package:mentalhealthapp/util/colors_utils.dart';

import '../reusable_widgets/reusable_widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("005A9C"),
          hexStringToColor("00FFDC"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 10, 0),
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
            children: <Widget>[
              logoWidget("assets/images/pngegg.png"),
              SizedBox(
                height: 10,
              ),
              reusableTextFeild("Enter UserName", Icons.person_outline, false,
                  _emailTextController),
              SizedBox(
                height: 10,
              ),
              reusableTextFeild("Enter Password", Icons.lock_outline, true,
                  _passwordTextController),
              SizedBox(
                height: 10,
              ),
              signInSignUpButton(context, true, () {}),
              signUpOption()
            ],
          ),
        )),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account?",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                // ignore: prefer_const_constructors
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

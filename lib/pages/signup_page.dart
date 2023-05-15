import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mentalhealthapp/pages/home_page.dart';
import 'package:mentalhealthapp/pages/signin_page.dart';

import '../reusable_widgets/reusable_widgets.dart';
import '../util/colors_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
              20,
              MediaQuery.of(context).size.height * 0.2,
              20,
              0,
            ),
            child: Column(children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              reusableTextFeild("Enter Name", Icons.person_2_outlined, false,
                  _nameTextController),
              SizedBox(height: 10),
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
              signInSignUpButton(context, false, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              })
            ]),
          ),
        ),
      ),
    );
  }
}

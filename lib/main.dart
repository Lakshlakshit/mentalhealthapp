import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mentalhealthapp/pages/home_page.dart';
import 'package:mentalhealthapp/pages/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SignInScreen()
        //Homepage(),
        );
  }
}

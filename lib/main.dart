import 'package:flutter/material.dart';
import 'package:reward_app/constants.dart';
import 'package:reward_app/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        fontFamily: 'Gordita',
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

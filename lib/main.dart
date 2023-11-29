import 'package:flutter/material.dart';
import 'package:flutter_playground/login/login.dart';

void main () {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "master",
      home: Login(),
    );
  }

}


import 'package:flutter/material.dart';
import 'package:flutter_playground/navigator-screen/ScreenA.dart';
import 'package:flutter_playground/navigator-screen/ScreenB.dart';
import 'package:flutter_playground/navigator-screen/ScreenC.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: 'navigator-screen',
      initialRoute: "/",
      routes: {
        "/": (context) => ScreenA(),
        "/b": (context) => ScreenB(),
        "/c": (context) => ScreenC()
      },
    );
  }
}
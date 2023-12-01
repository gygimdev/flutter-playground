import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/loading.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "weather",
      home: Loading(),
    );
  }
}

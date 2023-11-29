import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Widget", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("you have pushed the button this many times:"),
              Text("$counter"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: const Text("+"),
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                  ),
                  FloatingActionButton(
                    child: const Text("-"),
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

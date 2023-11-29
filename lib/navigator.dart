import 'package:flutter/material.dart';

AppBar myAppbar({String? title}) {
  return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      iconTheme: const IconThemeData(
          color: Colors.white
      ),
      title: Text(title ?? "Default navigator", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
  );
}

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'dayFour',
      home: FirstPage(),
    );
  }
}


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(title: 'Navigator'),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => SecondPage()));
          },
          child: const Text("Go to Second Page.", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: myAppbar(title: 'secondPage'),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("go to the first page.", style: TextStyle(color: Colors.white)),
          ),
        )
    );
  }
}


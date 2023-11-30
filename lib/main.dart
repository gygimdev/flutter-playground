import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "master",
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  String data = "Empty";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future & Async", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _fetch_data,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                child: Text("Future Test", style: TextStyle(color: Colors.red),)
            ),
            
            Text(data, style: TextStyle(fontWeight: FontWeight.bold),),
            FutureBuilder(
                future: _fetch_future_data(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text(snapshot.data ?? "no data");
                  }
                  return CircularProgressIndicator();
                }
            )
          ],
        ),
      )

    );
  }

  Future<String> _fetch_future_data() async {
    await Future.delayed(Duration(seconds: 2));
    return "fetched future data.";
  }

  void _fetch_data() {
    Future.delayed(Duration(seconds: 3))
        .then((value) {
          setState(() {
            this.data = "Fetched data";
          });
        });
  }
}

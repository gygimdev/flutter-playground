import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Playground",
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.amber[800],

      appBar: AppBar(
        title: const Text("Playground",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
      ),

      body: const Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dayOne.png'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.white,
                thickness: 0.5,
                endIndent: 30.0,
              ),
              Text("Name",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),),
              SizedBox(
                height: 10.0,
              ),
              Text("Playground",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 30.0,
              ),
              Text("level",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0
                ),),
              SizedBox(
                height: 10.0,
              ),
              Text("20",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget> [
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text('one',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),),
                ],
              ),
              Row(
                children: <Widget> [
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text('two',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),),
                ],
              ),
              Row(
                children: <Widget> [
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text('three',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    ),),
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/dayOne.png"),
                  radius: 40.0,
                  backgroundColor: Colors.blue,
                ),
              )

            ],

          )

      ),
    );
  }

}

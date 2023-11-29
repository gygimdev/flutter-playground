import 'package:flutter/material.dart';
import 'package:flutter_playground/dice.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice Game",
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white,),
          onPressed: () {  },
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top:50)),
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('image/profile.jpg'),
                  radius: 50,
                )
              ),
              Form(
                  child: Theme(
                      data: ThemeData(
                        primaryColor: Colors.teal,
                        inputDecorationTheme: const InputDecorationTheme(
                          labelStyle: TextStyle(
                            color: Colors.teal,
                            fontSize: 15.0
                          )
                        )
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            TextField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                labelText: "Email"
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                labelText: "Password",
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              // obscureText: true
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ButtonTheme(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero
                                  ),
                                  minimumSize: const Size(100, 50)
                                ),
                                // child: Text("login", style: TextStyle(color: Colors.white),)
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white
                                ),
                                onPressed: () {
                                  if(_emailController.text == "dice" && _passwordController.text == "1234") {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (BuildContext context) => Dice())
                                    );
                                  } else if(_emailController.text == "dice" && _passwordController.text != "1234") {
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
        
                                  } else if(_emailController.text != "dice" && _passwordController.text == "1234") {
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  }
                                },
                                )
                              ),
                          ],
                        ),
                      )
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}

var snackBar = const SnackBar(
  content: Text(
    "로그인 정보를 다시 입력하세요!",
    textAlign: TextAlign.center,
  ),
  duration: Duration(seconds: 2),
  backgroundColor: Colors.blue,
);



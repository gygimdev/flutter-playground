import 'package:flutter/material.dart';
import 'package:flutter_playground/button/myButton.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(
          color: Colors.white
        )),
        backgroundColor: Colors.blue,
      ),
      body: _buildBody(),
    );
  }


Widget _buildBody() {
     return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset("image/google.png", height: 30.0),
            text: const Text("Login with Google", style: TextStyle(color: Colors.black),),
            color: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero
            ),
            onPressed: () {},
          ),
          SizedBox(height: 10),
          MyButton(
            image: Image.asset("image/facebook.png", height: 30.0),
            text: const Text("Login with Facebook", style: TextStyle(color: Colors.blue),),
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero
            ),
            onPressed: () {},
          ),
          SizedBox(height: 10),
          MyButton(
            image: Image.asset("image/email.png", height: 30.0),
            text: const Text("Login with Email", style: TextStyle(color: Colors.green),),
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

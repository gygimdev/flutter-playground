import "package:flutter/material.dart";

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("ScreenC")
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text("go to ScreenA")
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("go to ScreenB")
              )
            ],
          ),
        )
    );
  }
}

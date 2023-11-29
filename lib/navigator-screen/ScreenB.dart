import "package:flutter/material.dart";

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenB")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text("Go to Screen A")
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Go to Screen C")
            ),
          ],
        ),
      )
    );
  }
}

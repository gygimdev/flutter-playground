import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  MyButton({
    required this.image,
    required this.text,
    required this.color,
    required this.shape,
    required this.onPressed
  });

  final Widget image;
  final Widget text;
  final Color color;
  final RoundedRectangleBorder shape;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            fixedSize: Size.fromHeight(50.0),
            shape: shape
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            image,
            SizedBox(width: 80),
            text
          ],
        )
    );
  }
}

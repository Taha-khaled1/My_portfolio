import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    required this.imageSrc,
    required this.text,
    required this.press,
  });

  final String imageSrc, text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.menu, color: Colors.white),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(20),
          primary: Colors.blue, // <-- Button color
          onPrimary: Colors.red, // <-- Splash color
        ),
      ),
    );
  }
}

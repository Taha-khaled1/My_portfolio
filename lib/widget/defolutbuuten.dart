import 'package:flutter/material.dart';
import '../constant.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.imageSrc,
    required this.text,
    required this.press,
  });

  final String imageSrc, text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: flatButtonStyle,
      onPressed: () {
        print('Button pressed');
      },
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          SizedBox(width: kDefaultPadding),
          Text(text),
        ],
      ),
    );
  }
}

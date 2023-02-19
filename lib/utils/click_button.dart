import 'package:flutter/material.dart';
class ClickButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
   ClickButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(text),
      color: Colors.blue,
      textColor: Colors.white,
    );
  }
}

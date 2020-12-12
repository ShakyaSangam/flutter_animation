import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onTap;
  const CustomButton({
    this.color,
    this.onTap,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      onPressed: onTap,
      child: Text(text, style: TextStyle(color: Colors.white),),
    );
  }
}
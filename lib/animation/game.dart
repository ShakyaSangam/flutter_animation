import 'dart:math';
import 'dart:async';

import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  static final rand = Random();

  double width = 100.0;
  double height = 100.0;
  double radius = 20;
  Alignment alignment = Alignment(0.5, 0.5);
  Color color = Colors.blue;

  void randValue() {
    width = rand.nextDouble() * 120 + 10;
    height = rand.nextDouble() * 120 + 10;
    alignment = Alignment(rand.nextDouble() * 2 - 1, rand.nextDouble() * 2 - 1);
    radius = rand.nextDouble() * 120 + 10;
    color = Color.fromARGB(
      rand.nextInt(255),
      rand.nextInt(255),
      rand.nextInt(255),
      rand.nextInt(255),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() {
              randValue();
            });
          },
          child: AnimatedAlign(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            alignment: alignment,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              width: width,
              height: height,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(radius)),
            ),
          ),
        ),
      ),
    );
  }
}
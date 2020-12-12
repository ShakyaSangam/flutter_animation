import 'package:animation_try/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

import 'animation/game.dart';
import 'animation/physical_model.dart';
import 'animation/tween_animation_screen.dart';

class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                color: Color(0xffFB8814),
                text: "Tween animation",
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AnimationScreen())),
              ),
              CustomButton(
                color: Color(0xff114477),
                text: "Simple animation",
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PhysicalModelExample())),
              ),
              CustomButton(
                color: Color(0xffEE1414),
                text: "Game",
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GameScreen())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

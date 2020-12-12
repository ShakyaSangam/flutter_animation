import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double _firstSilder = 0.0;
  double _secondSilder = 0.0;
  double _thirdSilder = 0.0;

  Color _finalValue = Colors.white;

  updateAnimatedWidget() {
    setState(() {
      _finalValue = Color.fromRGBO((_firstSilder * 255).toInt(),
          (_secondSilder * 255).toInt(), (_thirdSilder * 255).toInt(), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            // * animate icon with tween
            TweenAnimationBuilder(
              tween: ColorTween(begin: Colors.white, end: _finalValue),
              duration: Duration(milliseconds: 300),
              builder: (BuildContext context, Color color, Widget child) {
                return Container(
                  decoration: BoxDecoration(color: color),
                );
              },
              child: Container(),
            ),

            Container(
              child: Column(
                children: [
                  // TODO build slider for different color code
                  // * slider 1
                  Slider(
                    value: _firstSilder,
                    inactiveColor: Colors.black87,
                    activeColor: Colors.red,
                    onChanged: (double value) {
                      setState(() {
                        _firstSilder = value;
                      });
                      updateAnimatedWidget();
                    },
                  ),

                  // * slider 2
                  Slider(
                    value: _secondSilder,
                    inactiveColor: Colors.black87,
                    activeColor: Colors.green,
                    onChanged: (double value) {
                      setState(() {
                        _secondSilder = value;
                      });
                      updateAnimatedWidget();
                    },
                  ),

                  // * slider 3
                  Slider(
                    value: _thirdSilder,
                    inactiveColor: Colors.black87,
                    activeColor: Colors.blue,
                    onChanged: (double value) {
                      setState(() {
                        _thirdSilder = value;
                      });
                      updateAnimatedWidget();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

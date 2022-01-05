import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[600],
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 26.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
          body: EightBall(),
        ),
      ),
    );

class EightBall extends StatefulWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  // State
  int ball = 4;

  @override
  Widget build(BuildContext context) {
    void UpdateBall() {
      setState(() {
        ball = Random().nextInt(5) + 1;
      });
    }

    return Container(
      child: Center(
        child: GestureDetector(
          onTap: () {
            UpdateBall();
          },
          child: Image.asset('images/ball$ball.png'),
        ),
      ),
    );
  }
}

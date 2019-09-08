import 'package:flutter/material.dart';
import '../simphony_painter.dart';

class SignupScreen extends StatelessWidget {

  @override
	Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomPaint(
            painter: SimphonyPainter(),
          ),
          Text('hi2')
        ]
      )
    );
  }
}
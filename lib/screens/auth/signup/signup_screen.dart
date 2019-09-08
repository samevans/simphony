import 'package:flutter/material.dart';
import '../simphony_painter.dart';

class SignupScreen extends StatelessWidget {

  @override
	Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Container(
        color: Colors.white,
        child: CustomPaint(
          painter: SimphonyPainter(),
        ),
      ),
    );
  }
}
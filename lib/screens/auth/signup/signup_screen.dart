import 'package:flutter/material.dart';
import '../curved_path.dart';

class SignupScreen extends StatelessWidget {

  @override
	Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CurvedPath("Hello,", "Sign Up!"),
        ]
      )
    );
  }
}
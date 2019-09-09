import 'package:flutter/material.dart';

class SignupText extends StatelessWidget {

  static const double _horizontalPad = 16.0;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(_horizontalPad, 32.0, _horizontalPad, 4.0),
          child: Text("Sign Up", style: Theme.of(context).textTheme.title,),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_horizontalPad, 10.0, _horizontalPad, _horizontalPad),
          child: Text(
            "It's easy to find nearby musicians", 
            style: Theme.of(context).textTheme.body1,
          ),
        ),
      ]
    );
  }
}
import 'package:flutter/material.dart';
import 'package:simphony/app.dart';

class SignupWithEmail extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 300.0,
      height: 40.0,
      child: OutlineButton(
        onPressed: () => _onNavigatePress(context, SignupRoute),
        child: Text(
          "Sign up with Email",
          style: TextStyle(
            fontSize: 18, 
            fontFamily: 'Helvetica'
          ),
        ),
        shape: new RoundedRectangleBorder(
          side: BorderSide(width: 4.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
    
    
  }

  _onNavigatePress(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
import 'package:flutter/material.dart';
import 'package:simphony/app.dart';

class LoginText extends StatelessWidget {

  final double verticalPadding = 10.0;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, verticalPadding, 0.0, verticalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "Already have an account?",
              style: TextStyle(
                fontSize: 16, 
                color: Colors.black,
              )
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(4.0, 0.0, 0.0, 0.0),
            child: InkWell(
              onTap: () => _onNavigatePress(context, LoginRoute),
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 16, 
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
              )
            ),
          ),
          
        ]
      ),
    );
  }

  _onNavigatePress(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
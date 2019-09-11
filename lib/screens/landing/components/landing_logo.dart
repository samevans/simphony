import 'package:flutter/material.dart';

class LandingLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 170.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 30.0,
            child: Image.asset(
              'assets/images/ukulele-logo.png',
            ),
          ),
          Positioned(
            top: 5.0,
            left:135.0,
            child: Text(
              "Simphony",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 55.0
              ),
            ),
          ),
          Positioned(
            top: 115.0,
            left: 190.0,
            child: Text(
              "Find musicians nearby",
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 16.0,
                color: Color(0xFF666666)
              ),
            ),
          )
        ],
      ),
    );
  }
}
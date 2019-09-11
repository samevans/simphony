import 'package:flutter/material.dart';
import 'package:simphony/app.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupWithFacebook extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 330.0,
      height: 40.0,
      child: RaisedButton(
        onPressed: () => _onNavigatePress(context, SignupRoute),
        shape: StadiumBorder(),
        textColor: Colors.white,
        color: Color(0xFF625CFB),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.facebookSquare
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 3.0, 0.0, 0.0),
              child: Text(
                'Sign up with Facebook',
                style: TextStyle(
                  fontSize: 19, 
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Helvetica',
                  color: Colors.white
                ),
              ),
            )
          ],
        )
      ),
    );
  }

  _onNavigatePress(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
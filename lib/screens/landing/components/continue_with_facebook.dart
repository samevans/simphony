import 'package:flutter/material.dart';
import 'package:simphony/app.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContinueWithFacebook extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 300.0,
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
                'Continue with Facebook',
                style: TextStyle(
                  fontSize: 19, 
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Helvetica',
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
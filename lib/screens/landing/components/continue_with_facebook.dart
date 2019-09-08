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
              FontAwesomeIcons.facebook
            ),
            Text(
              'Continue with Facebook',
              style: TextStyle(fontSize: 18)
            ),
          ],
        )
      ),
    );
  }

  _onNavigatePress(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
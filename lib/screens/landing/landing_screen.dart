import 'package:flutter/material.dart';
import 'components/landing_logo.dart';
import 'components/login_text.dart';
import 'components/signup_with_email.dart';
import 'components/signup_with_facebook.dart';

class LandingScreen extends StatelessWidget {

	@override
	Widget build(BuildContext context) {

		return Scaffold(
      appBar: AppBar(
				title: Text("Welcome!"),
			),
			body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 25.0)),
                LandingLogo(),
                Padding(padding: EdgeInsets.only(top: 45.0)),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                SignupWithFacebook(),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                SignupWithEmail(),
                Padding(padding: EdgeInsets.only(top: 30.0)),
                LoginText(),
              ]
            )
          ),
        ]
		  )
    );
	}
}

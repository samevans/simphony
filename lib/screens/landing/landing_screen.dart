import 'package:flutter/material.dart';
import 'components/landing_logo.dart';
import 'components/login_text.dart';
import 'components/signup_text.dart';
import 'components/continue_with_email.dart';
import 'components/continue_with_facebook.dart';

class LandingScreen extends StatelessWidget {

	@override
	Widget build(BuildContext context) {

		return Scaffold(
      appBar: AppBar(
				title: Text("Welcome"),
			),
			body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 25.0)),
                LandingLogo(),
                Padding(padding: EdgeInsets.only(top: 45.0)),
                SignupText(),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                ContinueWithFacebook(),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                ContinueWithEmail(),
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

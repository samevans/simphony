import 'package:flutter/material.dart';
import 'components/image_banner.dart';
import 'components/login_text.dart';
import 'components/signup_text.dart';
import 'components/continue_with_email.dart';
import 'components/continue_with_facebook.dart';
import '../../models/location.dart';

class LandingScreen extends StatelessWidget {

	@override
	Widget build(BuildContext context) {

    final location = Location.fetchAll().first;

		return Scaffold(
			body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SignupText(),
                Padding(padding: EdgeInsets.only(top: 25.0)),
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

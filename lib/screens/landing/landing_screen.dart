import 'package:flutter/material.dart';
import 'package:simphony/app.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreen extends StatelessWidget {

	@override
	Widget build(BuildContext context) {

    final location = Location.fetchAll().first;

		return Scaffold(
			// appBar: AppBar(
			// 	title: Text(location.name),
			// ),
			body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
          GestureDetector(
            child: Text("Go to login"),
            onTap: () => _onNavigatePress(context, LoginRoute),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
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
                )
              ]
            )
          ),
        ]..addAll(textSections(location))
		  )
    );
	}

  _onNavigatePress(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}

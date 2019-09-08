import 'package:flutter/material.dart';
import 'package:simphony/app.dart';
import 'components/image_banner.dart';
import 'components/text_section.dart';
import 'components/continue_with_facebook.dart';
import '../../models/location.dart';

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
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GestureDetector(
                  child: Text("Go to login"),
                  onTap: () => _onNavigatePress(context, LoginRoute),
                ),
                ContinueWithFacebook()
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

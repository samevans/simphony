import 'package:flutter/material.dart';
import 'package:simphony/app.dart';
import 'image_banner.dart';
import 'text_section.dart';
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
          GestureDetector(
            child: Text("Go to signup"),
            onTap: () => _onLocationTap(context, SignupRoute),
          ),
          GestureDetector(
            child: Text("Go to login"),
            onTap: () => _onLocationTap(context, LoginRoute),
          ),
        ]..addAll(textSections(location))
		  )
    );
	}

  _onLocationTap(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}

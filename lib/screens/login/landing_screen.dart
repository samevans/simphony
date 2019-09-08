import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LandingScreen extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Hello'),
			),
			body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/treble-clef-heart.png"),
          TextSection("summary", "something1"),
          TextSection("summary2", "something2"),
          TextSection("summary3", "something2"),
        ]
		  )
    );
	}
}

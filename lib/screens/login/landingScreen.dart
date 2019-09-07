import 'package:flutter/material.dart';
import 'text_section.dart';

class LandingScreen extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Hello'),
			),
			body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextSection(Colors.red),
          TextSection(Colors.green),
          TextSection(Colors.blue),
        ]
		));
	}
}

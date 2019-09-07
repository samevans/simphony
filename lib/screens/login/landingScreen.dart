import 'package:flutter/material.dart';

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
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text(''),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(''),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(''),
          )
        ]
		));
	}
}

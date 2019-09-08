import 'package:flutter/material.dart';
import 'screens/login/landing_screen.dart';
import 'style.dart';

class App extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: LandingScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle
        )
      )
		);
	}
}

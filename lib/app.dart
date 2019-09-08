import 'package:flutter/material.dart';
import 'screens/landing/landing_screen.dart';
import 'screens/signup/locations.dart';
import 'style.dart';

const HomeRoute = '/';
const SignupRoute = '/signup';

class App extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
		);
	}

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case HomeRoute:
          screen = Locations();
          break;
        case SignupRoute:
          screen = LandingScreen(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(title: AppBarTextStyle),
      ),
      textTheme: TextTheme(
        title: TitleTextStyle,
        body1: Body1TextStyle
      )
    );
  }
}

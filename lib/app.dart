import 'package:flutter/material.dart';
import 'screens/landing/landing_screen.dart';
import 'screens/signup/signup_screen.dart';
import 'screens/login/login_screen.dart';
import 'style.dart';

const HomeRoute = '/';
const SignupRoute = '/signup';
const LoginRoute = '/login';

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
          screen = LandingScreen();
          break;
        case SignupRoute:
          screen = SignupScreen();
          break;
        case LoginRoute:
          screen = LoginScreen();
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

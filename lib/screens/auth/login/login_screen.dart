import 'package:flutter/material.dart';
// import '../curved_path.dart';
import '../../../models/user.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();

  // @override
	// Widget build(BuildContext context) {

  //   return Scaffold(
  //     body: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       crossAxisAlignment: CrossAxisAlignment.stretch,
  //       children: <Widget>[
  //         // CurvedPath("Welcome Back,", "Log In!"),
  //       ]
  //     )
  //   );
  // }
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
	Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
				title: Text("Log In"),
			),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email or Phone Number'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter your email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter your password';
                    }
                    return null;
                  },
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 16.0
                  ),
                  child: RaisedButton(
                    onPressed: () {
                      final form = _formKey.currentState;
                      if (form.validate()) {
                        // form.save();
                        // _user.save();
                        // _showDialog(context);
                      }
                    },
                    child: Text('Submit'),
                  ),
                )
              ],
            )
          ),
        )
      )
    );
  }
}
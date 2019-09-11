import 'package:flutter/material.dart';
import '../../../models/user.dart';

class SignupScreen extends StatefulWidget {

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final _formKey = GlobalKey<FormState>();
  final _user = User();
  
  @override
	Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
				title: Text("Sign Up"),
			),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'First Name'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                  onSaved: ((val) => setState(() => _user.firstName = val)),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Last Name'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                  onSaved: ((val) => setState(() => _user.lastName = val))
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onSaved: ((val) => setState(() => _user.email = val))
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
                        form.save();
                        _user.save();
                        _showDialog(context);
                      }
                    },
                    child: Text('Save'),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
      .showSnackBar(SnackBar(content: Text('Submitting your information'),));
  }
}

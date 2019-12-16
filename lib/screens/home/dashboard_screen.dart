import 'package:flutter/material.dart';
import 'package:location/location.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  var location = new Location();

  Map<String, double> userLocation;

  @override
	Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
				title: Text("Simphony"),
			),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            userLocation == null ?
            CircularProgressIndicator() :
            Text("Location: " + userLocation["latitude"].toString() + " " + userLocation["longitude"].toString()),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  getLocation().then((value) {
                    setState(() {
                      userLocation = value;
                    });
                  });
                },
                color: Colors.blue,
                child: Text(
                  "Get Location", 
                  style: TextStyle(color: Colors.white),
                ),
              )
            )
          ],
        ),
      )
    );
  }

  Future<Map<String, double>> getLocation() async {
    var currentLocation = <String, double>{};
    try {
      currentLocation = await location.getLocation();
    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
    // currentLocation["latitude"];
    // currentLocation["longitude"];
    // currentLocation["accuracy"];
    // currentLocation["altitude"];
    // currentLocation["speed"];
    // currentLocation["speed_accuracy"]; //Not for iOS
  }
}
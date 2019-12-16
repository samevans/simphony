import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position userLocation;
  String userAddress;

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
            (userLocation == null && userAddress == null)?
            CircularProgressIndicator() :
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Location: " + userLocation.latitude.toString() + ", " + userLocation.longitude.toString()),
                Text(userAddress)
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  _getLocation();
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

  _getLocation() async {
    
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        userLocation = position;
      });
      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          userLocation.latitude, userLocation.longitude);

      Placemark place = p[0];

      setState(() {
        userAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }
}
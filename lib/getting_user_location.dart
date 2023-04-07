import 'package:flutter/material.dart';
import 'package:location/location.dart';

class GettingUserLocation extends StatefulWidget {
  const GettingUserLocation({Key? key}) : super(key: key);

  @override
  State<GettingUserLocation> createState() => _GettingUserLocationState();
}

class _GettingUserLocationState extends State<GettingUserLocation> {
  // longitude  (longitude, latitude)  coordinate of the device
  // latitude
  double longitude = 0.0;
  double latitude = 0.0;

  getUserLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    setState(() {
      latitude = _locationData.latitude!;
      longitude = _locationData.longitude!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("getting user location"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "User Location",
              style: TextStyle(
                fontSize: 24,
                color: Colors.red,
              ),
            ),
            Text(
              "LONGITUDE : $longitude ",
              style: TextStyle(
                fontSize: 24,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              "LATITUDE : $latitude ",
              style: TextStyle(
                fontSize: 24,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                getUserLocation();
              },
              child: Text(
                "Get User Location ",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

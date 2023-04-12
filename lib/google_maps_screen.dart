import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsScreen extends StatefulWidget {
  const GoogleMapsScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapsScreen> createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends State<GoogleMapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
              41.23425488695282,
              69.21564716845751
          ),
          zoom: 15,
        ),
        mapType: MapType.normal,
        onCameraMove: (position) {
          print("LONGITUDE: ${position.target.longitude}");
          print("LATITUDE: ${position.target.latitude}");
        },
        markers: {
          Marker(
            markerId: MarkerId("id_1"),
            infoWindow: InfoWindow(
              title: "PDP University",
              snippet: "IT university"
            ),
            position: LatLng(
                41.23425488695282,
                69.21564716845751
            ),
          )
        },
      ),
    );
  }
}

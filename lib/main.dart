import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(
  MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
     GoogleMapController mapController;

  final LatLng _center = const LatLng(37.42796133580664, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      debugShowCheckedModeBanner: false,  
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Maps'),
        ),
        drawer: Drawer(),
        body: GoogleMap(
         onMapCreated: _onMapCreated,
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 10.0,
        ),
      )
    ));
  }
}


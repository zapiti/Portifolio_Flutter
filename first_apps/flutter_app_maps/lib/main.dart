import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}


class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{}; // CLASS MEMBER, MAP OF MARKS


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-18.9417811,-50.341201399999996),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(

      target: LatLng(-20.9417811,-50.341201399999996),

      zoom: 19.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        markers: Set<Marker>.of(markers.values),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    GeolocationStatus geolocationStatus  = await Geolocator().checkGeolocationPermissionStatus();
    print(geolocationStatus);
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);
    print(position.longitude);

    print("=======================================================");
    List<Placemark> placemark1 = await Geolocator().placemarkFromPosition(position);
    print(placemark1);
    print(placemark1.length);

    List<Placemark> placemark = await Geolocator().placemarkFromAddress("rua adormervil 500");
    print("=======================================================");
    print(placemark.first.position.latitude);
    print(placemark.first.position.longitude);

    _add();

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
  void _add() async {

    final MarkerId markerId = MarkerId("1");

    final MarkerId markerId2 = MarkerId("2");

    final MarkerId markerId3 = MarkerId("3");

    final MarkerId markerId4 = MarkerId("4");


    List<Placemark> placemark = await Geolocator().placemarkFromAddress("rua adormervil 500");

    List<Placemark> placemark2 = await Geolocator().placemarkFromAddress("rua genario 100");

    List<Placemark> placemark3 = await Geolocator().placemarkFromCoordinates(-19.09922803,-50.09949636);

    List<Placemark> placemark4 = await Geolocator().placemarkFromCoordinates(-20.94362803,-50.3368504);
    // creating a new MARKER
    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(placemark.first.position.latitude, placemark.first.position.longitude),
      infoWindow: InfoWindow(title: "vai da certo 1", snippet: '*'),
      onTap: () {},
    );

    final Marker marker2 = Marker(
      markerId: markerId2,
      position: LatLng(placemark2.first.position.latitude, placemark2.first.position.longitude),
      infoWindow: InfoWindow(title: "vai da certo 2", snippet: '*'),
      onTap: () {},
    );

    final Marker marker3 = Marker(
      markerId: markerId3,
      position: LatLng(placemark3.first.position.latitude, placemark3.first.position.longitude),
      infoWindow: InfoWindow(title: "vai da certo 3", snippet: '*'),
      onTap: () {},
    );

    final Marker marker4 = Marker(
      markerId: markerId4,
      position: LatLng(placemark4.first.position.latitude, placemark4.first.position.longitude),
      infoWindow: InfoWindow(title: "vai da certo  4", snippet: '*'),
      onTap: () {},
    );


    setState(() {
      print("===================*====================================");
      // adding a new marker to map
      markers[markerId] = marker;

      markers[markerId2] = marker2;

      markers[markerId3] = marker3;

      markers[markerId4] = marker4;
    });
  }
}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mapmansion extends StatefulWidget {
  @override
  State<mapmansion> createState() => MapSampleState();
}

class MapSampleState extends State<mapmansion> {
  Completer<GoogleMapController> _controller = Completer();

  //7.1740785,100.5407896,12z
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(7.1715405, 100.6095748),
    zoom: 19.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Songkhla'),
            icon: Icon(Icons.map),
          ),
          BottomNavigationBarItem(
            title: Text('Location'),
            icon: Icon(Icons.location_history),
          ),
        ],

      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  Completer<GoogleMapController> harita = Completer();
  var konum = CameraPosition(target: LatLng(38.758041, 26.1789993), zoom: 8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: GoogleMap(
          initialCameraPosition: konum,
          onMapCreated: (GoogleMapController controller) {
            harita.complete(controller);
          },
        ),
      ),
    );
  }
}

 import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShowSimpleMap extends StatefulWidget {
  const ShowSimpleMap({Key? key}) : super(key: key);

  @override
  State<ShowSimpleMap> createState() => _ShowSimpleMapState();
}

class _ShowSimpleMapState extends State<ShowSimpleMap> {
  GoogleMapController? mapController;
  final LatLng _center = const LatLng(37.42796133580664, -122.085749655962);
  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Google Map"),
      ),
      body: GoogleMap(
          onMapCreated: onMapCreated,
          initialCameraPosition:
              CameraPosition(target: _center, zoom: 14.4746)),
    );
  }
}

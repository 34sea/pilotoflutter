import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsView extends StatefulWidget {
  @override
  _MapaExemploState createState() => _MapaExemploState();
}

class _MapaExemploState extends State<GoogleMapsView> {
  late GoogleMapController mapController;

  final LatLng _centro = const LatLng(-19.8333, 34.8500); 

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Google Maps'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _centro,
          zoom: 20.0,
        ),
        myLocationEnabled: true,
        mapType: MapType.normal,
      ),
    );
  }
}

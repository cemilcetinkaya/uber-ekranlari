import 'package:app/screens/Map/OpenChooseDestination.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomepageMap extends StatefulWidget {
  const HomepageMap({super.key});

  @override
  State<HomepageMap> createState() => _HomepageMapState();
}

class _HomepageMapState extends State<HomepageMap> {
  Location _locationController = new Location();
  TextEditingController locationController = TextEditingController();

  LatLng? _currentPosition = null;
  @override
  void initState() {
    super.initState();
    getLocationUpdates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPosition == null
          ? const Center(
              child: Text("Loading..."),
            )
          : SlidingUpPanel(
              isDraggable: false,
              body: GoogleMap(
                initialCameraPosition:
                    CameraPosition(target: _currentPosition!, zoom: 13),
                markers: {
                  Marker(
                      markerId: MarkerId("_currentLocation"),
                      icon: BitmapDescriptor.defaultMarker,
                      position: _currentPosition!),
                },
              ),
              panelBuilder: (controller) =>
                  OpenChooseDestination(controller: controller),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(18),
              ),
            ),
    );
  }

  Future<void> getLocationUpdates() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await _locationController.serviceEnabled();
    if (_serviceEnabled) {
      _serviceEnabled = await _locationController.requestService();
    } else {
      return;
    }

    _permissionGranted = await _locationController.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _locationController.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationController.onLocationChanged
        .listen((LocationData currentLocation) {
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        setState(() {
          _currentPosition =
              LatLng(currentLocation.latitude!, currentLocation.longitude!);
        });
      }
    });
  }
}

import 'dart:async';

import 'package:app/screens/Map/TipForDriverSlidingUpPanel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TipForDriver extends StatefulWidget {
  const TipForDriver({super.key});

  @override
  State<TipForDriver> createState() => _TipForDriverState();
}

class _TipForDriverState extends State<TipForDriver> {
  Location _locationController = new Location();

  final Completer<GoogleMapController> _mapController =
      Completer<GoogleMapController>();

  //Konum
  static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);
  static const LatLng _pApplePark = LatLng(37.3346, -122.0090);
  LatLng? _currentP = null;

  // konum butonu
  static const double fabHeightClosed = 186.0;
  double fabHeight = fabHeightClosed;

  Map<PolylineId, Polyline> polylines = {};

  @override
  void initState() {
    super.initState();
    getLocationUpdates().then(
      (_) => {
        getPolylinePoints().then((coordinates) => {
              generatePolyLineFromPoints(coordinates),
            }),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //Sliding Panel açılma boyutları
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.5;
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.2;

    return Scaffold(
      body: _currentP == null
          ? const Center(
              child: Text("Loading..."),
            )
          : Stack(alignment: Alignment.topCenter, children: <Widget>[
              SlidingUpPanel(
                body: GoogleMap(
                  onMapCreated: ((GoogleMapController controller) =>
                      _mapController.complete(controller)),
                  initialCameraPosition: CameraPosition(
                    target: _pGooglePlex,
                    zoom: 13,
                  ),
                  markers: {
                    Marker(
                      markerId: MarkerId("_currentLocation"),
                      icon: BitmapDescriptor.defaultMarker,
                      position: _currentP!,
                    ),
                    // Marker(
                    //     markerId: MarkerId("_sourceLocation"),
                    //     icon: BitmapDescriptor.defaultMarker,
                    //     position: _pGooglePlex),
                    Marker(
                        markerId: MarkerId("_destionationLocation"),
                        icon: BitmapDescriptor.defaultMarker,
                        position: _pApplePark)
                  },
                  polylines: Set<Polyline>.of(polylines.values),
                ),
                maxHeight: panelHeightOpen,
                minHeight: panelHeightClosed,
                panelBuilder: (controller) =>
                    TipForDriverSlidingUpPanel(controller: controller),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(18),
                ),
                onPanelSlide: (position) => setState(() {
                  final panelMaxScrollExtent =
                      panelHeightOpen - panelHeightClosed;
                  fabHeight = position * panelMaxScrollExtent + fabHeightClosed;
                }),
              ),
              Positioned(
                bottom: fabHeight,
                right: 20,
                child: buildFAB(context),
              )
            ]),
    );
  }

  Future<void> _cameraToPosition(LatLng pos) async {
    final GoogleMapController controller = await _mapController.future;
    CameraPosition _newCameraPosition = CameraPosition(
      target: pos,
      zoom: 13,
    );
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(_newCameraPosition),
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
          _currentP =
              LatLng(currentLocation.latitude!, currentLocation.longitude!);
          _cameraToPosition(_currentP!);
        });
      }
    });
  }

  Future<List<LatLng>> getPolylinePoints() async {
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyC4CiAeBKJ_muMMbnsYLA874gx-1AmKbKE",
      PointLatLng(_pGooglePlex.latitude, _pGooglePlex.longitude),
      PointLatLng(_pApplePark.latitude, _pApplePark.longitude),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print(result.errorMessage);
    }
    return polylineCoordinates;
  }

  void generatePolyLineFromPoints(List<LatLng> polylineCoordinates) async {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id,
        color: Colors.black,
        points: polylineCoordinates,
        width: 8);
    setState(() {
      polylines[id] = polyline;
    });
  }

  void showTripCompletedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: IntrinsicHeight(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    300, // İstediğiniz yüksekliği burada belirleyebilirsiniz
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(254, 187, 27, 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.location_on,
                      size: 48,
                    ),
                  ),
                  SizedBox(height: 23),
                  Text(
                    "You have arrived at \nyour destination.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("See you on the next trip :)"),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.only(),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(254, 187, 27, 1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "OK",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildFAB(BuildContext context) => FloatingActionButton(
        backgroundColor: Colors.white,
        child: GestureDetector(
          child: Icon(
            Icons.gps_fixed,
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          showTripCompletedDialog(context);
        },
      );
}

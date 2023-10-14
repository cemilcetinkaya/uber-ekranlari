import 'dart:convert';
import 'package:app/screens/Map/HomepageMap.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class ChooseDestination extends StatefulWidget {
  final ScrollController controller;

  const ChooseDestination({super.key, required this.controller});

  @override
  State<ChooseDestination> createState() => _ChooseDestinationState();
}

class _ChooseDestinationState extends State<ChooseDestination> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _destinationController = TextEditingController();
  var uuid = new Uuid();
  String _sessionToken = '122344';
  List<dynamic> _placeList = [];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      onChange();
    });
  }

  void onChange() {
    if (_sessionToken == null) {
      setState(() {
        _sessionToken = uuid.v4();
      });
    }
    getSuggestion(_controller.text);
  }

  void getSuggestion(String input) async {
    String apiKey = "AIzaSyC4CiAeBKJ_muMMbnsYLA874gx-1AmKbKE";
    String baseURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    String request =
        '$baseURL?input=$input&key=$apiKey&sessiontoken=$_sessionToken';

    var response = await http.get(Uri.parse(request));

    print(response.body.toString());
    if (response.statusCode == 200) {
      setState(() {
        _placeList = jsonDecode(response.body.toString())['predictions'];
      });
    } else {
      throw Exception('Failed to get data');
    }
  }

  void getPlaceDetails(String placeId) async {
    String apiKey = "AIzaSyC4CiAeBKJ_muMMbnsYLA874gx-1AmKbKE";
    String baseURL = 'https://maps.googleapis.com/maps/api/place/details/json';
    String request = '$baseURL?place_id=$placeId&key=$apiKey';

    var response = await http.get(Uri.parse(request));

    print(response.body.toString());
    if (response.statusCode == 200) {
      Map<String, dynamic> placeDetails =
          jsonDecode(response.body.toString())['result'];
      String name = placeDetails['name'];
      double latitude = placeDetails['geometry']['location']['lat'];
      double longitude = placeDetails['geometry']['location']['lng'];

      // Now you have the name, latitude, and longitude of the selected place.
      print('Name: $name');
      print('Latitude: $latitude');
      print('Longitude: $longitude');

      // Do whatever you need with this information.
    } else {
      throw Exception('Failed to get place details');
    }
  }

  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Choose Destination'),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                right: 12,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _destinationController,
                          decoration: InputDecoration(
                              hintText: 'Your Place',
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.my_location_rounded,
                                color: Color.fromRGBO(254, 187, 27, 1),
                              )),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                              hintText: 'Search for Destination',
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(254, 187, 27, 1),
                              )),
                        ),
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: _placeList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () async {
                            String placeId = _placeList[index]['place_id'];
                            getPlaceDetails(placeId);

                            // Update the destination text field with the selected place's name
                            _controller.text = _placeList[index]['description'];
                          },
                          title: Text(_placeList[index]['description']),
                        );
                      },
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}

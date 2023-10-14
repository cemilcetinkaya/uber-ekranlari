import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SearchingForDriver extends StatefulWidget {
  const SearchingForDriver({super.key});

  @override
  State<SearchingForDriver> createState() => _SearchingForDriverState();
}

class _SearchingForDriverState extends State<SearchingForDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Align(
            alignment: Alignment
                .centerLeft, // Text'i sola dayamak için Alignment.centerLeft kullanın
            child: Text(
              "Searching for Driver",
            ),
          ),
          centerTitle: false, // centerTitle özelliğini false olarak ayarlayın
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Searching Ride...",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "This may take a few seconds...",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    sliderRotate: false, // açıkken slide döne döne gidiyor
                    text: 'Slide to Cancel',
                    elevation: 0, // olmazsa aşağıdan gölge veriyo
                    sliderButtonIcon: Icon(Icons.cancel),
                    innerColor:
                        Color.fromRGBO(254, 187, 27, 1), // İç buton rengi
                    outerColor: Colors.grey[200], // Genel kapsayan rengi
                    onSubmit: () {},
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

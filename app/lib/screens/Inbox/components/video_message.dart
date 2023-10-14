import 'package:flutter/material.dart';

import '../../../constants.dart';

class VideoMessage extends StatefulWidget {
  const VideoMessage({Key? key}) : super(key: key);

  @override
  _VideoMessageState createState() => _VideoMessageState();
}

class _VideoMessageState extends State<VideoMessage> {
  bool isZoomed = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isZoomed = !isZoomed;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          alignment: Alignment.center,
          width: isZoomed
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width * 0.45,
          height: isZoomed
              ? MediaQuery.of(context).size.width * 0.45 * 1.6
              : MediaQuery.of(context).size.width * 0.45,
          constraints: BoxConstraints(
            maxWidth:
                MediaQuery.of(context).size.width, // Ekranın maksimum genişliği
            maxHeight: MediaQuery.of(context)
                .size
                .height, // Ekranın maksimum yüksekliği
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset("assets/sliderfoto1.jpg"),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

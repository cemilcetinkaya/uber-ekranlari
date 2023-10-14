import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

final List<String> imageAssets = [
  'assets/sliderfoto1.jpg',
  'assets/sliderfoto2.jpg',
  'assets/sliderfoto3.jpg',
];

final List<Widget> sliders = imageAssets.map((asset) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0.0),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      child: Image.asset(
        asset,
        width: double.infinity,
        height: 1000.0, // Resim yüksekliği ayarlayın
        fit: BoxFit.cover, // Resmi kaplama modu
      ),
    ),
  );
}).toList();

class HomepageSlider extends StatefulWidget {
  const HomepageSlider({Key? key}) : super(key: key);

  @override
  State<HomepageSlider> createState() => _HomepageSliderState();
}

class _HomepageSliderState extends State<HomepageSlider> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Center(
      child: Align(
        alignment: Alignment.topCenter, // Üst ortaya hizala
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              26.0), // İhtiyaca göre yuvarlaklık ayarlayın
          child: FlutterCarousel(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              disableCenter: true,
              viewportFraction: deviceSize.width > 800.0 ? 0.8 : 1.0,
              height: deviceSize.height * 0.20,
              indicatorMargin: 12.0,
              enableInfiniteScroll: true,
              slideIndicator: const CircularSlideIndicator(),
            ),
            items: sliders,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carousel Slider Example'),
        ),
        body: HomepageSlider(),
      ),
    ),
  );
}

import 'package:app/screens/Inbox/HomePage/NewPage.dart';
import 'package:flutter/material.dart';

class ActionContainerSmall extends StatelessWidget {
  final String title;
  final String img;

  const ActionContainerSmall({Key? key, required this.title, required this.img})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Tıklama işleminde yeni bir dart dosyasına gitmek için navigator kullanabilirsiniz.
        // Örnek olarak, yeni bir sayfa açmak için MaterialPageRoute kullanalım.
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              NewPage(), // Yeni sayfanızın adını buraya ekleyin
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset("assets/" + img + ".png", height: 45),
              ),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

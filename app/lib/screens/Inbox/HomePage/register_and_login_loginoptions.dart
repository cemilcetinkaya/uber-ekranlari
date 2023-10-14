import 'package:app/screens/Inbox/HomePage/NewPage.dart';
import 'package:flutter/material.dart';

class LoginOptions extends StatelessWidget {
  final String img;

  const LoginOptions({Key? key, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Tıklama işlemi
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NewPage(), // Yeni sayfa adı buraya eklenir
        ));
      },
      child: ElevatedButton(
        onPressed: () {
          // Butona tıklama işlemi (şu anda boş)
        },
        child: Container(
          width: 30, // Container genişliği
          height: 60, // Container yüksekliği
          child: Center(
            child: Image.asset("assets/images/$img.png", height: 30),
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding:
              EdgeInsets.zero, // Buton içeriğinin etrafındaki boşluğu kaldırır
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      ),
    );
  }
}
//         child: Image.asset("assets/" + img + ".png", height: 30),
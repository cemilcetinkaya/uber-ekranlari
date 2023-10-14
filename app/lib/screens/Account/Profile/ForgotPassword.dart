import 'package:app/screens/Account/Profile/OTPForgotPassword.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  bool isSmsSelected = false;
  bool isEmailSelected = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Align(
          alignment: Alignment
              .centerLeft, // Text'i sola dayamak için Alignment.centerLeft kullanın
          child: Text(
            "Forgot Password",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        centerTitle: false, // centerTitle özelliğini false olarak ayarlayın
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 220,
                  child: Image.asset("assets/images/Forgot_password.png"),
                ),
              ),
              const Text(
                "Select which contact details should be we use to reset your password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (!isSmsSelected) {
                      isSmsSelected = true;
                      isEmailSelected = false; // Diğerini seçili olmaktan çıkar
                    }
                    // İkincil bir işlem yapmak isterseniz burada yapabilirsiniz
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: isSmsSelected
                        ? Border.all(
                            color: Color.fromRGBO(254, 187, 27, 1), width: 2.0)
                        : null,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.orange[50],
                        ),
                        child: const Icon(Icons.sms,
                            color: Color.fromRGBO(254, 187, 27, 1)),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "via SMS:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "+90 543 *****30",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (!isEmailSelected) {
                      isEmailSelected = true;
                      isSmsSelected = false; // Diğerini seçili olmaktan çıkar
                    }
                    // İkincil bir işlem yapmak isterseniz burada yapabilirsiniz
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: isEmailSelected
                        ? Border.all(
                            color: Color.fromRGBO(254, 187, 27, 1), width: 2.0)
                        : null,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.orange[50],
                        ),
                        child: const Icon(Icons.email,
                            color: Colors
                                .amber), // Icon'ı email olarak değiştirdim
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "via Email:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "taxidriver@gmail.com",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(254, 187, 27, 1))),
                  onPressed: () {
                    // "Sign in" butonuna tıklandığında yapılacak işlem
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            OTPForgotPassword(), // Gitmek istediğiniz sayfanın adını buraya ekleyin
                      ),
                    );
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:app/components/bottom_navigationbar.dart';
import 'package:app/screens/Account/Account.dart';
import 'package:app/screens/Account/Profile/CreateNewPassword.dart';
import 'package:app/screens/Login_Register/AccountSetup.dart';
import 'package:app/screens/Login_Register/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinput/pinput.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class OTPForgotPassword extends StatefulWidget {
  const OTPForgotPassword({Key? key});

  @override
  State<OTPForgotPassword> createState() => _OTPForgotPasswordState();
}

class _OTPForgotPasswordState extends State<OTPForgotPassword> {
  final FocusNode _pinFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _pinFocusNode.requestFocus();
  }

  @override
  void dispose() {
    _pinFocusNode.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Geri tuşuna basıldığında yapılacak işlem
              Navigator.of(context).pop(); // Önceki sayfaya dönüş işlemi
            },
          ),
          title: Text(
            'Forgot Password',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 260,
                  alignment: Alignment.center,
                  child: const Center(
                    child: Text(
                      "Code has been send to +31 973 **** 40",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Pinput(
                  length: 4, //
                  showCursor: true,
                  defaultPinTheme: PinTheme(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(248, 246, 246, 0.947),
                      border: Border.all(
                          color: const Color.fromRGBO(224, 207, 207, 1)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 80,
                    height: 60,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "Resend code in ",
                          style: TextStyle(color: Colors.black, fontSize: 17)),
                      TextSpan(
                        text: "34",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromRGBO(254, 187, 27,
                                1) // 34 sayısının rengi (örnekte kırmızı)
                            ),
                      ),
                      TextSpan(
                          text: " seconds",
                          style: TextStyle(color: Colors.black, fontSize: 17)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(254, 187, 27, 1))),
                      onPressed: () {
                        // "Forgot the password?" metnine tıklanınca yapılacak işlem
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return CreateNewPassword(); // Yönlendirilecek sayfanın adını ekleyin
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Verify",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}

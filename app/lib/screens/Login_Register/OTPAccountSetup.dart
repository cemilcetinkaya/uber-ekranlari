import 'package:app/components/bottom_navigationbar.dart';
import 'package:app/screens/Account/Account.dart';
import 'package:app/screens/Login_Register/AccountSetup.dart';
import 'package:app/screens/Login_Register/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinput/pinput.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class OTPAccountSetup extends StatefulWidget {
  const OTPAccountSetup({Key? key});

  @override
  State<OTPAccountSetup> createState() => _OTPAccountSetupState();
}

class _OTPAccountSetupState extends State<OTPAccountSetup> {
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
            'Create New PIN',
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
                      "Add a PIN number to make your account \nmore secure",
                      style: TextStyle(
                        fontSize: 15,
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
                  height: 70,
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
                        showAccountSetupCompletedDialog(context);
                      },
                      child: const Text(
                        "Continue",
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

  void showAccountSetupCompletedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // AlertDialog içeriği
        return AlertDialog(
          content: IntrinsicHeight(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 300,
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
                      Icons.person,
                      size: 48,
                    ),
                  ),
                  SizedBox(height: 23),
                  Text(
                    "Congratulations",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Your account is ready to use. You will \nbe redirected to the Home page in a \nfew seconds.",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: LoadingAnimationWidget.dotsTriangle(
                      color: Color.fromRGBO(254, 187, 27, 1),
                      size: 70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    // Popup açıldıktan 3 saniye sonra yönlendirme yapıyoruz
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) {
            return BottomNavigationbar();
          },
        ),
        (Route<dynamic> route) => false, // Popup'ı kapat
      );
    });
  }
}

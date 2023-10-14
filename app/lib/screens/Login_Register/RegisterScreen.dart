import 'package:app/components/RegisterScreen/register_screen_bottom_texts.dart';
import 'package:app/components/RegisterScreen/register_screen_divider.dart';
import 'package:app/screens/Login_Register/CreateYourAccount.dart';
import 'package:app/screens/Login_Register/LogintoYourAccount.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/components/RegisterScreen/register_screen_login_options.dart';
import 'OTPAccountSetup.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Country country = Country(
    phoneCode: '91',
    countryCode: 'IN',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'India',
    example: 'India',
    displayName: 'India',
    displayNameNoCountryCode: 'IN',
    e164Key: '',
  );
  @override
  Widget build(BuildContext context) {
    var secondaryColor = const Color.fromRGBO(235, 173, 24, 1);
    var blackColor = const Color.fromRGBO(33, 33, 33, 1);
    var buttonColor = const Color.fromRGBO(158, 158, 158, 0.1);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 20),
              Text(
                "Enter your mobile number",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: blackColor),
              ),
              const SizedBox(height: 8),
              Container(
                height: 35,
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: const Color.fromRGBO(21, 19, 21, 1),
                  decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      contentPadding: const EdgeInsets.symmetric(vertical: 6),
                      hintStyle: const TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(21, 19, 21, 1),
                      ),
                      filled: true,
                      fillColor: buttonColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: buttonColor),
                      ),
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            showCountryPicker(
                                context: context,
                                onSelect: (value) {
                                  setState(() {
                                    country = value;
                                  });
                                });
                          },
                          child: Text(
                            "${country.flagEmoji} + ${country.phoneCode}",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(21, 19, 21, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // "Sign In" düğmesine tıklandığında OTP sayfasına yönlendirme işlemini gerçekleştirin.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const CreateYourAccount(), // OTP sayfasının adını ve yolunu verin
                    ),
                  );
                },
                child: Container(
                  height: 35,
                  margin: const EdgeInsets.symmetric(vertical: 13),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 218, 0, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color.fromRGBO(21, 19, 21, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              RegisterDivider(
                title: "Or continue with",
              ),
              RegisterLoginButtons(
                  title: "Continue with Google", logoName: "google"),
              RegisterLoginButtons(
                  title: "Continue with Apple", logoName: "apple"),
              RegisterLoginButtons(
                  title: "Continue with Facebook", logoName: "facebook"),
              RegisterLoginButtons(
                  title: "Continue with E Mail", logoName: "emaillogo"),
              RegisterDivider(title: "Or continue with"),
              Center(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: blackColor,
                    size: 15.0,
                  ),
                  label: Text(
                    'Find my account',
                    style: TextStyle(
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              BottomText(
                  text:
                      "By proceeding, you agree that Uber and its affiliates may contact you using the shared phone number through an automatic phone dialing system, call, WhatsApp, or text message. To opt out, text 'STOP' to 89203."),
              const SizedBox(
                height: 55,
              ),
              BottomText(
                  text:
                      "This site is protected by reCAPTCHA, and Google's Privacy Policy and Terms of Service apply.")
            ]),
          )),
        ),
      ),
    );
  }
}

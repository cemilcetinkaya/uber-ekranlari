import 'package:app/screens/Inbox/HomePage/action_container_small.dart';
import 'package:app/screens/Inbox/HomePage/register_and_login_loginoptions.dart';
import 'package:app/components/RegisterScreen/register_screen_divider.dart';
import 'package:app/components/bottom_navigationbar.dart';
import 'package:app/screens/Account/Profile/ForgotPassword.dart';
import 'package:app/screens/Login_Register/CreateYourAccount.dart';
import 'package:app/screens/Login_Register/RegisterScreen.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class LogintoYourAccount extends StatefulWidget {
  const LogintoYourAccount({super.key});

  @override
  State<LogintoYourAccount> createState() => _LogintoYourAccountState();
}

class _LogintoYourAccountState extends State<LogintoYourAccount> {
  Country country = Country(
    phoneCode: '31',
    countryCode: 'NL',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'Netherlands',
    example: 'Netherlands',
    displayName: 'Netherlands',
    displayNameNoCountryCode: 'NL',
    e164Key: '',
  );
  @override
  var buttonColor = const Color.fromRGBO(248, 246, 246, 0.947);
  var secondcolor = const Color.fromRGBO(255, 250, 237, 1);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login to your \nAccount",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: const Color.fromRGBO(21, 19, 21, 1),
                  decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    contentPadding: const EdgeInsets.symmetric(vertical: 6),
                    hintStyle: const TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(21, 19, 21, 1),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: buttonColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: buttonColor),
                    ),
                    prefixIcon: Container(
                      height: 60,
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
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "${country.flagEmoji} + ${country.phoneCode}",
                            style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromRGBO(21, 19, 21, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: buttonColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                    labelText: 'Password',
                    prefixIcon: const Icon(
                        Icons.key), // İkon eklemek için prefixIcon kullanılır.
                    // Metin giriş alanını sarmak için kenarlık ekler.
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
                              BottomNavigationbar(), // Gitmek istediğiniz sayfanın adını buraya ekleyin
                        ),
                      );
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: GestureDetector(
                    child: Text(
                      "Forgot the password?",
                      style: TextStyle(
                          color: Color.fromRGBO(254, 187, 27, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    onTap: () {
                      // "Forgot the password?" metnine tıklanınca yapılacak işlem
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ForgotPassword(); // Yönlendirilecek sayfanın adını ekleyin
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                RegisterDivider(title: "Or continue with"),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 35, left: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LoginOptions(
                        img: 'facebook',
                      ),
                      LoginOptions(
                        img: 'google',
                      ),
                      LoginOptions(
                        img: 'apple',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CreateYourAccount(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Color.fromRGBO(254, 187, 27, 1),
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

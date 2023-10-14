import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _dateController = TextEditingController();
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
  Widget build(BuildContext context) {
    var secondaryColor = const Color.fromRGBO(235, 173, 24, 1);
    var blackColor = const Color.fromRGBO(33, 33, 33, 1);
    var buttonColor = const Color.fromRGBO(158, 158, 158, 0.1);
    String? selectedGender;
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
            "Edit Your Profile",
          ),
        ),
        centerTitle: false, // centerTitle özelliğini false olarak ayarlayın
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/images/profilepic2.png",
                    width: 110,
                    height: 110,
                  ),
                  Positioned(
                    bottom: 0, // Alt kenara yasla
                    right: 0, // Sağ kenara yasla
                    child: GestureDetector(
                      onTap: () {
                        // İkon tıklandığında yapılacak işlemleri burada tanımlayabilirsiniz
                        // Örneğin, düzenleme ekranını açabilirsiniz
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(254, 187, 27, 1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: buttonColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: buttonColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Alice Hood',
                    labelStyle: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: buttonColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: buttonColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Alice',
                    labelStyle: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  controller: _dateController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: buttonColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: buttonColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: '13.07.1978',
                    labelStyle: const TextStyle(fontSize: 14),
                    suffixIcon: const Icon(Icons.date_range_outlined),
                  ),
                  readOnly: true,
                  onTap: () {
                    _selectedDate();
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: buttonColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: buttonColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'alicehood@gmail.com',
                    labelStyle: const TextStyle(fontSize: 14),
                    suffixIcon: const Icon(Icons.email_outlined),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 55,
                child: Container(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: const Color.fromRGBO(21, 19, 21, 1),
                    decoration: InputDecoration(
                      hintText: "434 234 94 29",
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
                        padding: const EdgeInsets.only(top: 13, left: 5),
                        margin: const EdgeInsets.only(left: 5),
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
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 55, // Örnek bir yükseklik değeri
                child: DropdownButtonFormField<String>(
                  value: selectedGender,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: buttonColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: buttonColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Female',
                    labelStyle: const TextStyle(fontSize: 14),
                  ),
                  items: <String>['Male', 'Female']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value.length > 10
                            ? value.substring(0, 10) + '...'
                            : value,
                        style: const TextStyle(
                            fontSize: 14), // Örnek bir yazı boyutu
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Container(
                width: 400,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(254, 187, 27, 1))),
                  onPressed: () {},
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
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

  Future<void> _selectedDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2001, 1, 1),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text = pickedDate.toString().split(' ')[0];
      });
    }
  }
}

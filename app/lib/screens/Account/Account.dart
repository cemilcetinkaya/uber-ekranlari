import 'package:app/components/profile_menu_options.dart';
import 'package:app/screens/Account/Addresses/MyAddress.dart';
import 'package:app/screens/Account/HelpCenter/HelpCenter.dart';
import 'package:app/screens/Account/InviteFriends/InviteFriends.dart';
import 'package:app/screens/Account/Notifications/Notifications.dart';
import 'package:app/screens/Account/PrivacyPoliciy/PrivacyPolicy.dart';
import 'package:app/screens/Account/Profile/EditProfile.dart';
import 'package:app/screens/MyEwallet/myewallet.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/profilepic2.png",
                      height: 130,
                      width: 130,
                    ),
                  ),
                  const Text(
                    "Alice Hood",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  const Text(
                    "+90 539 203 03 20",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              // Alt Menü
              ProfileMenuWidget(
                title: "Edit Profile",
                icon: Icons.person,
                onPress: () {
                  // Sayfa yönlendirmesi burada yapılacak
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfile(),
                    ),
                  );
                },
              ),
              ProfileMenuWidget(
                title: "Addresses",
                icon: Icons.location_on,
                onPress: () {
                  // Sayfa yönlendirmesi burada yapılacak
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyAddresses(),
                    ),
                  );
                },
              ),
              ProfileMenuWidget(
                title: "Notification",
                icon: Icons.notifications_active,
                onPress: () {
                  // Sayfa yönlendirmesi burada yapılacak
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Notifications(),
                    ),
                  );
                },
              ),
              // ProfileMenuWidget(
              //   title: "Payment",
              //   icon: Icons.wallet,
              //   onPress: () {
              //     // Sayfa yönlendirmesi burada yapılacak
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const MyEwallet(),
              //       ),
              //     );
              //   },
              // ),
              ProfileMenuWidget(
                title: "Privacy Policy",
                icon: Icons.security,
                onPress: () {
                  // Sayfa yönlendirmesi burada yapılacak
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy(),
                    ),
                  );
                },
              ),
              ProfileMenuWidget(
                title: "Invite Friends",
                icon: Icons.person_add_alt_1_sharp,
                onPress: () {
                  // Sayfa yönlendirmesi burada yapılacak
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InviteFriends(),
                    ),
                  );
                },
              ),
              ProfileMenuWidget(
                title: "Help Center",
                icon: Icons.info,
                onPress: () {
                  // Sayfa yönlendirmesi burada yapılacak
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpCenter(),
                    ),
                  );
                },
              ),
              ProfileMenuWidget(
                title: "Logout",
                icon: Icons.logout,
                onPress: () {
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.confirm,
                    title: 'Logout',
                    //barrierColor: Colors.red, bütün arka plana rengi veriyor

                    text: 'Are you sure want to log out?',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

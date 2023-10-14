import 'package:flutter/material.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    // Örnek kullanıcıları oluştur
    users = [
      User(
        name: 'David Hamd',
        phoneNumber: '+90-545-332-9456',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Mia Typhoon',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Isabelle Back',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'David Hamd',
        phoneNumber: '+90-545-332-9456',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Mia Typhoon',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Isabelle Back',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'David Hamd',
        phoneNumber: '+90-545-332-9456',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Mia Typhoon',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Isabelle Back',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Mia Typhoon',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Isabelle Back',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Mia Typhoon',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
      User(
        name: 'Isabelle Back',
        phoneNumber: '+90-505-694-2571',
        avatarPath: 'assets/images/profilepic2.png',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Align(
          alignment: Alignment
              .centerLeft, // Text'i sola dayamak için Alignment.centerLeft kullanın
          child: Text(
            "Invite Friends",
            style: TextStyle(
              fontSize: 28.0,
            ),
          ),
        ),
        centerTitle: false, // centerTitle özelliğini false olarak ayarlayın
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 30.0, left: 8.0, right: 16.0),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                final user = users[index];
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(user.avatarPath),
                        radius: 25.0,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user.name,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(user.phoneNumber),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (user.invited) {
                                  user.invited = false;
                                } else {
                                  user.invited = true;
                                }
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: user.invited
                                  ? Colors.white
                                  : Color.fromRGBO(254, 187, 27, 1),
                              onPrimary: user.invited
                                  ? Color.fromRGBO(254, 187, 27, 1)
                                  : Colors.black,
                              side: BorderSide(
                                color: user.invited
                                    ? Color.fromRGBO(254, 187, 27, 1)
                                    : Colors.transparent,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            child: Text(user.invited ? 'Invited' : 'Invite'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class User {
  final String name;
  final String phoneNumber;
  final String avatarPath;
  bool invited;

  User({
    required this.name,
    required this.phoneNumber,
    required this.avatarPath,
    this.invited = false,
  });
}

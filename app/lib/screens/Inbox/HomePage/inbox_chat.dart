import 'package:flutter/material.dart';

class InboxChats extends StatefulWidget {
  const InboxChats({super.key});

  @override
  State<InboxChats> createState() => _InboxChatsState();
}

class _InboxChatsState extends State<InboxChats> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images/profilfotografi.jpeg",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "David Bechkamson",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 120),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(254, 187, 27, 1),
                          ),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "I have booked your taxi now...",
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 59),
                          child: Text("13:29"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

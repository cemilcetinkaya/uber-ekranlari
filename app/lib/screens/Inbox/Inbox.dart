import 'package:app/screens/Inbox/HomePage/inbox_calls.dart';
import 'package:app/screens/Inbox/HomePage/inbox_chat.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Inbox",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              )),
        ),
        body: const Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              TabBar(
                indicatorWeight: 4.0,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    icon: Text(
                      "Chat",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    icon: Text("Calls",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    InboxChats(),
                    InboxCalls(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:app/screens/Account/HelpCenter/Contact.dart';
import 'package:app/screens/Account/HelpCenter/HelpCenterFAQ.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Align(
            alignment: Alignment
                .centerLeft, // Text'i sola dayamak için Alignment.centerLeft kullanın
            child: Text(
              "Help Center",
            ),
          ),
          centerTitle: false, // centerTitle özelliğini false olarak ayarlayın
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              TabBar(
                indicatorWeight: 4.0,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    icon: Text(
                      "FAQ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    icon: Text("Contact us",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    HelpCenterFAQ(),
                    HelpCenterContact(),
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

import 'package:flutter/material.dart';

class InboxCalls extends StatefulWidget {
  const InboxCalls({super.key});

  @override
  State<InboxCalls> createState() => _InboxCallsState();
}

class _InboxCallsState extends State<InboxCalls> {
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
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "David Bechkamson",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                                size: 12,
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Incoming / Dec 19,2024"),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.call, color: Color.fromRGBO(235, 173, 24, 1)),
            ],
          ),
          SizedBox(height: 20),
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
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "David Bechkamson",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                                size: 12,
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Outgoing / Dec 19,2024"),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.call, color: Color.fromRGBO(235, 173, 24, 1)),
            ],
          ),
          SizedBox(height: 20),
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
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "David Bechkamson",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 12,
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Missed / Dec 19,2024"),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.call, color: Color.fromRGBO(235, 173, 24, 1)),
            ],
          ),
        ],
      ),
    );
  }
}

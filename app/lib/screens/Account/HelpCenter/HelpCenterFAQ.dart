import 'package:app/screens/Account/HelpCenter/components/faq_questions.dart';
import 'package:flutter/material.dart';

class HelpCenterFAQ extends StatefulWidget {
  const HelpCenterFAQ({super.key});

  @override
  State<HelpCenterFAQ> createState() => _HelpCenterFAQState();
}

class _HelpCenterFAQState extends State<HelpCenterFAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: 350,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "What is Taxio",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.info),
                            ],
                          ),
                          Divider(),
                          Text(
                            "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  faq_questions(
                    title: 'How to use Taxio',
                    text:
                        'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet ',
                  ),
                  faq_questions(
                    title: 'Is Taxio free to use?',
                    text:
                        'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet ',
                  ),
                  faq_questions(
                    title: 'Is Taxio free to use?',
                    text:
                        'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet ',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

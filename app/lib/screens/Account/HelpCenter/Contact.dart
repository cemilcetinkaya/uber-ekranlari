import 'package:app/screens/Account/HelpCenter/components/contact_options.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpCenterContact extends StatefulWidget {
  const HelpCenterContact({super.key});

  @override
  State<HelpCenterContact> createState() => _HelpCenterContactState();
}

class _HelpCenterContactState extends State<HelpCenterContact> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.phone),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Customer Service",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        HelpCenterOptions(
          title: 'WhatsApp',
          icon: Icon(FontAwesomeIcons.whatsapp),
        ),
        HelpCenterOptions(
          title: 'Website',
          icon: Icon(FontAwesomeIcons.a),
        ),
        HelpCenterOptions(
          title: 'Facebook',
          icon: Icon(FontAwesomeIcons.facebook),
        ),
        HelpCenterOptions(
          title: 'Instagram',
          icon: Icon(FontAwesomeIcons.instagram),
        ),
        HelpCenterOptions(
          title: 'Twitter',
          icon: Icon(FontAwesomeIcons.twitter),
        ),
      ],
    );
  }
}

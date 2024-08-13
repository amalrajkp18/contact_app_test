import 'package:contact_app/view/widgets/contact_detail_tile_widget.dart';
import 'package:contact_app/view/widgets/contact_info_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/contact_info_action_widget.dart';

class ContactInfoPage extends StatelessWidget {
  const ContactInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: contactInfoAppBarWidget(context),
      body: Stack(
        children: [
          Container(
            height: 180,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.lightBlueAccent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                const CircleAvatar(
                  radius: 72,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 72,
                    color: Colors.blueAccent,
                  ),
                ),
                const Spacer(flex: 3),
                Text(
                  "Amal Raj K P",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "San Francisco, USA",
                  style: GoogleFonts.poppins(
                    color: Colors.grey[600],
                  ),
                ),
                const Spacer(flex: 2),
                const ContactInfoActionWidget(),
                const Spacer(flex: 2),
                ContactDetailTileWidget(
                  text: "+91 9072134884",
                  iconData: Icons.call,
                  onTap: () {
                    // handle  call
                  },
                ),
                const Spacer(),
                ContactDetailTileWidget(
                  text: "amalrajkpgmail.com",
                  iconData: Icons.mail_outline,
                  onTap: () {
                    // handle  mail
                  },
                ),
                const Spacer(flex: 2),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blueAccent,
                  ),
                ),
                const Spacer(flex: 6),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

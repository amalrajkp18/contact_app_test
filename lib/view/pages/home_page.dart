import 'package:contact_app/view/pages/add_contact_page.dart';
import 'package:contact_app/view/pages/contact_info_page.dart';
import 'package:contact_app/view/widgets/contact_search_field_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ContactSearchFieldWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            leading: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.blueAccent,
              child: Text(
                "A",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            title: Text(
              "Amal Raj KP",
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
            ),
            subtitle: Text(
              "+91 9072134884",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            onTap: () {
              // Navigate to contact info page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContactInfoPage(),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add contact page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddContactPage(),
            ),
          );
        },
        child: const Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
    );
  }
}

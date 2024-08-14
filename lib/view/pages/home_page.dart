import 'package:contact_app/controller/contact_controller/contact_provider.dart';
import 'package:contact_app/view/pages/contact_form_page.dart';
import 'package:contact_app/view/pages/contact_info_page.dart';
import 'package:contact_app/view/widgets/contact_search_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contacts = ref.watch(contactProvider);

    return Scaffold(
      appBar: AppBar(
        title: const ContactSearchFieldWidget(),
      ),
      body: contacts.isEmpty
          ? const Center(
              child: Text("Add Contacts"),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.blueAccent,
                      backgroundImage: contacts[index].imageData != null
                          ? MemoryImage(contacts[index].imageData!)
                          : null,
                      child: contacts[index].imageData == null
                          ? Text(
                              contacts[index]
                                  .fullName
                                  .substring(0, 1)
                                  .toUpperCase(),
                              style: Theme.of(context).textTheme.displaySmall,
                            )
                          : null,
                    ),
                    title: Text(
                      contacts[index].fullName,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    subtitle: Text(
                      contacts[index].phoneNumber,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    onTap: () {
                      // Navigate to contact info page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactInfoPage(
                            contact: contacts[index],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add contact page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactFormPage(),
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

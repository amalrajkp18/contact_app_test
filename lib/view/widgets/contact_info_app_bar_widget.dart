import 'package:contact_app/controller/contact_controller/contact_provider.dart';
import 'package:contact_app/model/contat_entity/contact_entity.dart';
import 'package:contact_app/view/pages/contact_form_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

AppBar contactInfoAppBarWidget(
  BuildContext context,
  ContactEntity contact,
) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.white,
      ),
    ),
    backgroundColor: Colors.blueAccent,
    elevation: 0,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ContactFormPage(
                contact: contact,
                isEdit: true,
              ),
            ),
          );
        },
        icon: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
      Consumer(
        builder: (context, ref, _) {
          return IconButton(
            onPressed: () {
              ref.read(contactProvider.notifier).remove(contact.id);

              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          );
        },
      )
    ],
  );
}

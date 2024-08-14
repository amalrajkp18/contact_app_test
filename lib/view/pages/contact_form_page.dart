import 'dart:io';

import 'package:contact_app/controller/contact_controller/contact_provider.dart';
import 'package:contact_app/controller/image_controller/image_picker_provider.dart';
import 'package:contact_app/core/extension/string_extension.dart';
import 'package:contact_app/model/contat_entity/contact_entity.dart';
import 'package:contact_app/view/widgets/contact_form_field_widget.dart';
import 'package:contact_app/view/widgets/contact_location_field_widget.dart';
import 'package:contact_app/view/widgets/image_picker_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContactFormPage extends HookConsumerWidget {
  ContactFormPage({
    super.key,
    this.contact,
    this.isEdit = false,
  });

  final formkey = GlobalKey<FormState>();
  final ContactEntity? contact;
  final bool isEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController(text: contact?.fullName);
    final phoneNumberController =
        useTextEditingController(text: contact?.phoneNumber);
    final emailController =
        useTextEditingController(text: contact?.emailAddress);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: const Text("Add Contact"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const ImagePickerDialogWidget();
                      },
                    );
                  },
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blueAccent.withOpacity(0.2),
                    backgroundImage: ref.watch(imagePickerProvider) == null
                        ? contact?.imageData != null
                            ? MemoryImage(contact!.imageData!)
                            : null
                        : FileImage(
                            File(ref.watch(imagePickerProvider)!.path),
                          ),
                    child: ref.watch(imagePickerProvider) == null
                        ? const Icon(
                            Icons.camera_alt,
                            color: Colors.blueAccent,
                            size: 30,
                          )
                        : null,
                  ),
                ),
                const SizedBox(height: 24),
                ContactFormFieldWidget(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter name";
                    }
                    return null;
                  },
                  labelText: "Full Name",
                  prefixIcon: Icons.person,
                ),
                const SizedBox(height: 16),
                ContactFormFieldWidget(
                  controller: phoneNumberController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter phone number";
                    }
                    if (value.length > 10 || value.length < 10) {
                      return "Enter correct phone number";
                    }
                    return null;
                  },
                  labelText: "Phone Number",
                  prefixIcon: Icons.phone,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                ContactFormFieldWidget(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null;
                    }
                    if (!value.validateMail()) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                  labelText: "Email Address",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email,
                ),
                const SizedBox(height: 16),
                ContactLocationFieldWidget(contact: contact),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      if (isEdit) {
                        ref.read(contactProvider.notifier).editData(
                              fullName: nameController.text,
                              phoneNumber: phoneNumberController.text,
                              emailAddress: emailController.text,
                              image: ref.read(imagePickerProvider),
                              contact: contact!,
                            );
                      } else {
                        ref.read(contactProvider.notifier).putData(
                              fullName: nameController.text,
                              phoneNumber: phoneNumberController.text,
                              emailAddress: emailController.text,
                              image: ref.read(imagePickerProvider),
                            );
                      }
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    "Save Contact",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

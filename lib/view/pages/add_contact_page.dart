import 'package:contact_app/view/widgets/contact_form_field_widget.dart';
import 'package:flutter/material.dart';

class AddContactPage extends StatelessWidget {
  const AddContactPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blueAccent.withOpacity(0.2),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const ContactFormFieldWidget(
                labelText: "Full Name",
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 16),
              const ContactFormFieldWidget(
                labelText: "Phone Number",
                prefixIcon: Icons.phone,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              const ContactFormFieldWidget(
                labelText: "Email Address",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email,
              ),
              const SizedBox(height: 16),
              const ContactFormFieldWidget(
                labelText: "Address",
                prefixIcon: Icons.location_on,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // handle save contact
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
    );
  }
}

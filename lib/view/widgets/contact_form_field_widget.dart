import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactFormFieldWidget extends StatelessWidget {
  const ContactFormFieldWidget({
    super.key,
    required this.labelText,
    this.keyboardType,
    required this.prefixIcon,
    this.controller,
  });

  final String labelText;
  final TextInputType? keyboardType;
  final IconData prefixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.labelMedium,
        floatingLabelStyle: GoogleFonts.poppins(color: Colors.blueAccent),
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blueAccent),
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}

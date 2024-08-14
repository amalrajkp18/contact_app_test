import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactFormFieldWidget extends StatelessWidget {
  const ContactFormFieldWidget({
    super.key,
    required this.labelText,
    this.keyboardType,
    required this.prefixIcon,
    this.controller,
    this.enabled = true,
    this.validator,
  });

  final String labelText;
  final TextInputType? keyboardType;
  final IconData prefixIcon;
  final TextEditingController? controller;
  final bool enabled;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        enabled: enabled,
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.labelMedium,
        floatingLabelStyle: GoogleFonts.poppins(color: Colors.blueAccent),
        prefixIcon: Icon(prefixIcon),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black87),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blueAccent),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black87),
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactSearchFieldWidget extends StatelessWidget {
  const ContactSearchFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CupertinoSearchTextField(
      prefixIcon: Icon(Icons.search),
      suffixIcon: Icon(Icons.close),
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      placeholder: "Search contacts",
    );
  }
}

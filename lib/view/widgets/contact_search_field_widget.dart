import 'package:contact_app/controller/contact_controller/contact_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContactSearchFieldWidget extends ConsumerWidget {
  const ContactSearchFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoSearchTextField(
      prefixIcon: const Icon(Icons.search),
      suffixIcon: const Icon(Icons.close),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      placeholder: "Search contacts",
      onChanged: (value) {
        ref.read(contactProvider.notifier).search(value);
      },
    );
  }
}

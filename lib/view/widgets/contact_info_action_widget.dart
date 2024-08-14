import 'package:contact_app/controller/url_lauch_controller/url_lauch_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContactInfoActionWidget extends ConsumerWidget {
  const ContactInfoActionWidget({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            // handle call action
            ref.read(urlLauchProvider.notifier).phoneCall(phoneNumber);
          },
          icon: const Icon(
            Icons.call,
            size: 36,
            color: Colors.blueAccent,
          ),
        ),
        IconButton(
          onPressed: () {
            // handle sms action
            ref.read(urlLauchProvider.notifier).sms(phoneNumber);
          },
          icon: const Icon(
            Icons.message,
            size: 36,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ContactInfoActionWidget extends StatelessWidget {
  const ContactInfoActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            // handle call action
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

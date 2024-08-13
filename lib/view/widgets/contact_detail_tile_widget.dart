import 'package:flutter/material.dart';

class ContactDetailTileWidget extends StatelessWidget {
  const ContactDetailTileWidget({
    super.key,
    required this.text,
    required this.iconData,
    required this.onTap,
  });

  final String text;
  final IconData iconData;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(iconData, color: Colors.blueAccent),
            const SizedBox(width: 16),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

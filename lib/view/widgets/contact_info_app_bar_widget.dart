import 'package:flutter/material.dart';

AppBar contactInfoAppBarWidget(BuildContext context) {
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
        onPressed: () {},
        icon: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      )
    ],
  );
}

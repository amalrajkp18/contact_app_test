import 'package:contact_app/main.dart';
import 'package:flutter/material.dart';

class SnackbarUtils {
  /// Show a message as a snackbar
  ///
  /// [message] Is the message to be shown to the user
  static void showError({required String message}) {
    MainApp.scaffoldMessngerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(
          message,
        ),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        backgroundColor: Colors.redAccent[700],
      ),
    );
  }
}

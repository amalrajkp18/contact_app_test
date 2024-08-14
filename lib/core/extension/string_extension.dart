extension StringExtension on String {
  validateMail() {
    String pattern = r'^[^@]+@[^@]+\.[^@]+';
    RegExp regex = RegExp(pattern);

    return regex.hasMatch(this);
  }
}

import 'package:contact_app/core/utils/snackbar_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'url_lauch_provider.g.dart';

@riverpod
class UrlLauch extends _$UrlLauch {
  @override
  void build() {}

  Future<void> phoneCall(String phoneNumber) async {
    final Uri telUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(telUri)) {
      await launchUrl(telUri);
    } else {
      SnackbarUtils.showError(message: 'Could not launch phone call');
    }
  }

  Future<void> sms(String phoneNumber) async {
    final Uri smsUri = Uri(
      scheme: 'sms',
      path: phoneNumber,
    );
    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    } else {
      SnackbarUtils.showError(message: 'Could not launch SMS');
    }
  }

  Future<void> mail(String email) async {
    final Uri mailUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunchUrl(mailUri)) {
      await launchUrl(mailUri);
    } else {
      SnackbarUtils.showError(message: 'Could not launch email');
    }
  }
}

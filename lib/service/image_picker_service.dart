import 'package:image_picker/image_picker.dart';

final class ImagePickerService {
  static Future<XFile?> pickImage(ImageSource source) async {
    final picker = ImagePicker();
    return await picker.pickImage(source: source);
  }
}

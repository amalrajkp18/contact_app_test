import 'package:contact_app/service/image_picker_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_picker_provider.g.dart';

@riverpod
class ImagePicker extends _$ImagePicker {
  @override
  XFile? build() {
    return null;
  }

  Future<void> pickImageFromCamera() async {
    state = await ImagePickerService.pickImage(ImageSource.camera);
  }

  Future<void> pickImageFromGallery() async {
    state = await ImagePickerService.pickImage(ImageSource.gallery);
  }
}

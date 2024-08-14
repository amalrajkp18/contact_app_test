import 'dart:typed_data';

import 'package:contact_app/controller/location_controller/location_name_reduce_provider.dart';
import 'package:contact_app/controller/location_controller/place_details_provider.dart';
import 'package:contact_app/model/contat_entity/contact_entity.dart';
import 'package:contact_app/model/place_model/place_model.dart';
import 'package:contact_app/service/contact_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_provider.g.dart';

@riverpod
class Contact extends _$Contact {
  @override
  List<ContactEntity> build() {
    return ContactService.getAll();
  }

  Future<void> putData({
    XFile? image,
    required String fullName,
    required String phoneNumber,
    String? emailAddress,
  }) async {
    PlaceModel? placeModel;
    Uint8List? imageData;

    //selected location data
    ref.read(placeDetailsProvider).whenData(
      (value) {
        placeModel = value;
      },
    );

    // convert file  Uint8List
    if (image != null) {
      imageData = await image.readAsBytes();
    }

    final location = placeModel?.results?.first.geometry?.location;

    ContactService.put(
      ContactEntity(
        imageData: imageData,
        fullName: fullName,
        phoneNumber: phoneNumber,
        emailAddress: emailAddress,
        address: ref.read(
          locationNameReduceProvider(
            placeModel?.results?.first.formattedAddress,
          ),
        ),
        lat: location?.lat,
        long: location?.lng,
      ),
    );

    state = ContactService.getAll();
  }

  Future<void> editData({
    XFile? image,
    required String fullName,
    required String phoneNumber,
    String? emailAddress,
    required ContactEntity contact,
  }) async {
    PlaceModel? placeModel;
    Uint8List? imageData;

    ref.read(placeDetailsProvider).whenData(
      (value) {
        placeModel = value;
      },
    );

// check image changed and convert it
    if (image != null) {
      imageData = await image.readAsBytes();
    } else {
      imageData = contact.imageData;
    }
    final location = placeModel?.results?.first.geometry?.location;

    ContactService.put(
      ContactEntity(
        id: contact.id,
        imageData: imageData,
        fullName: fullName,
        phoneNumber: phoneNumber,
        emailAddress: emailAddress,
        address: ref.read(
              locationNameReduceProvider(
                placeModel?.results?.first.formattedAddress,
              ),
            ) ??
            contact.address,
        lat: location?.lat ?? contact.lat,
        long: location?.lng ?? contact.long,
      ),
    );

    state = ContactService.getAll();
  }

  void remove(int id) {
    ContactService.remove(id);
    state = ContactService.getAll();
  }

  void search(String searchText) {
    state = ContactService.search(searchText);
  }
}

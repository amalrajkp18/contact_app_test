import 'package:contact_app/core/utils/snackbar_util.dart';
import 'package:contact_app/model/place_model/place_model.dart';
import 'package:contact_app/service/location_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'place_details_provider.g.dart';

@riverpod
class PlaceDetails extends _$PlaceDetails {
  @override
  FutureOr<PlaceModel?> build() {
    return null;
  }

  Future<void> fromLatlng(LatLng latLng) async {
    if (latLng != const LatLng(0, 0)) {
      state = const AsyncValue.loading();

      state = await AsyncValue.guard(
        () async {
          return await LocationService.getPlaceDetailsFromLatLng(latLng);
        },
      );
    } else {
      SnackbarUtils.showError(message: "Select your location");
    }
  }
}

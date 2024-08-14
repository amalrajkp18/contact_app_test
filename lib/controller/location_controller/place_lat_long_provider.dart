import 'package:contact_app/model/lat_long_model/lat_long_model.dart';
import 'package:contact_app/service/location_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'place_lat_long_provider.g.dart';

@riverpod
class PlaceLatLong extends _$PlaceLatLong {
  @override
  FutureOr<LatLongModel?> build() {
    return null;
  }

  Future<void> get(String placeId) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(
      () async {
        return await LocationService.getLatLong(placeId);
      },
    );
  }
}

final locationBtnProvider = StateProvider<bool>((ref) {
  return false;
});

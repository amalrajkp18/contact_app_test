import 'package:contact_app/model/place_suggestion_model/place_prediction.dart';
import 'package:contact_app/service/location_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_search_provider.g.dart';

@riverpod
class LocationSearch extends _$LocationSearch {
  @override
  FutureOr<List<PlacePrediction>> build() {
    return [];
  }

  Future<void> search(String searchQuery) async {
    if (searchQuery.isEmpty) {
      state = const AsyncValue.data([]);
    } else {
      state = const AsyncValue.loading();

      state = await AsyncValue.guard(
        () async {
          return await LocationService.searchLocations(searchQuery);
        },
      );
    }
  }
}

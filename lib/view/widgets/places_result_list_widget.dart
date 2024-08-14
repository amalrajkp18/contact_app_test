import 'package:contact_app/controller/location_controller/location_search_provider.dart';
import 'package:contact_app/controller/location_controller/place_lat_long_provider.dart';
import 'package:contact_app/view/widgets/places_tile_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesResultListWidget extends ConsumerWidget {
  const PlacesResultListWidget({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(locationSearchProvider).when(
          data: (data) => ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => Card(
              color: Colors.white,
              child: ListTile(
                onTap: () {
                  ref.read(placeLatLongProvider.notifier).get(
                        data[index].placeId ?? '',
                      );
                  ref.invalidate(locationSearchProvider);
                  ref.invalidate(locationBtnProvider);
                  searchController.clear();
                },
                leading: const Icon(
                  Icons.trending_up,
                  color: Colors.blueAccent,
                ),
                title: Text(data[index].structuredFormat?.mainText?.text ?? ""),
                subtitle: Text(
                    data[index].structuredFormat?.secondaryText?.text ?? ""),
              ),
            ),
            itemCount: data.length,
          ),
          error: (error, stackTrace) => Card(
            color: Colors.white10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text("Something went wrong"),
            ),
          ),
          loading: () => ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => const Card(
              color: Colors.white10,
              child: PlacesTileLoadingWidget(),
            ),
            itemCount: 6,
          ),
        );
  }
}

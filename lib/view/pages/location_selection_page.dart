import 'package:contact_app/controller/location_controller/place_details_provider.dart';
import 'package:contact_app/controller/location_controller/place_lat_long_provider.dart';
import 'package:contact_app/view/widgets/location_selection_appbar_widget.dart';
import 'package:contact_app/view/widgets/places_result_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocationSelectionPage extends HookConsumerWidget {
  const LocationSelectionPage({
    super.key,
    required this.latLng,
  });

  final LatLng latLng;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();

    final latLongController = useState(const LatLng(0, 0));

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: locaSelectionAppBarWidget(
        context: context,
        searchController: searchController,
      ),
      body: Stack(
        children: [
          ref.watch(placeLatLongProvider).when(
                data: (data) {
                  return GoogleMap(
                    onMapCreated: (controller) {
                      latLongController.value = LatLng(
                        data?.latitude ?? latLng.latitude,
                        data?.longitude ?? latLng.longitude,
                      );
                    },
                    initialCameraPosition: CameraPosition(
                      target: data != null
                          ? LatLng(data.latitude ?? 0, data.longitude ?? 0)
                          : latLng,
                      zoom: data != null ||
                              latLng !=
                                  const LatLng(
                                      22.715702381914507, 79.1712949052453)
                          ? 15
                          : 4.5,
                    ),
                    mapType: MapType.normal,
                    compassEnabled: false,
                    zoomControlsEnabled: false,
                    onTap: (argument) {
                      latLongController.value = argument;
                    },
                    markers: {
                      Marker(
                        markerId: const MarkerId("selected_mark"),
                        visible: true,
                        position: latLongController.value,
                      )
                    },
                  );
                },
                error: (error, stackTrace) => Center(
                  child: Column(
                    children: [
                      const Text("Something went wrong"),
                      const SizedBox(
                        height: 16,
                      ),
                      IconButton(
                        onPressed: () {
                          ref.invalidate(placeLatLongProvider);
                        },
                        icon: const Icon(Icons.refresh),
                      )
                    ],
                  ),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          PlacesResultListWidget(searchController: searchController),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ref.watch(locationBtnProvider)
          ? null
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ElevatedButton(
                onPressed: () {
                  ref
                      .read(placeDetailsProvider.notifier)
                      .fromLatlng(latLongController.value);

                  Navigator.pop(context);
                },
                child: Text(
                  "Use Location",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
    );
  }
}

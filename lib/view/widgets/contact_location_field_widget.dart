import 'package:contact_app/controller/location_controller/location_name_reduce_provider.dart';
import 'package:contact_app/controller/location_controller/place_details_provider.dart';
import 'package:contact_app/model/contat_entity/contact_entity.dart';
import 'package:contact_app/view/pages/location_selection_page.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import 'contact_form_field_widget.dart';

class ContactLocationFieldWidget extends ConsumerWidget {
  const ContactLocationFieldWidget({
    super.key,
    this.contact,
  });

  final ContactEntity? contact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(placeDetailsProvider).when(
          data: (data) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationSelectionPage(
                    latLng: LatLng(
                      data?.results?.first.geometry?.location?.lat == null
                          ? contact?.lat ?? 22.715702381914507
                          : data!.results!.first.geometry!.location!.lat!,
                      data?.results?.first.geometry?.location?.lng == null
                          ? contact?.long ?? 22.715702381914507
                          : data!.results!.first.geometry!.location!.lng!,
                    ),
                  ),
                ),
              );
            },
            child: ContactFormFieldWidget(
              controller: TextEditingController(
                text: ref.watch(
                      locationNameReduceProvider(
                        data?.results?.first.formattedAddress,
                      ),
                    ) ??
                    contact?.address,
              ),
              labelText: "Address",
              prefixIcon: Icons.location_on,
              enabled: false,
            ),
          ),
          error: (error, stackTrace) => const ContactFormFieldWidget(
            labelText: "Something went wrong",
            prefixIcon: Icons.location_on,
            enabled: false,
          ),
          loading: () => Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: Colors.grey.shade100,
            child: Container(
              width: double.infinity,
              height: 48,
              color: Colors.white,
            ),
          ),
        );
  }
}

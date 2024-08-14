import 'package:contact_app/controller/url_lauch_controller/url_lauch_provider.dart';
import 'package:contact_app/model/contat_entity/contact_entity.dart';
import 'package:contact_app/view/widgets/contact_detail_tile_widget.dart';
import 'package:contact_app/view/widgets/contact_info_action_widget.dart';
import 'package:contact_app/view/widgets/contact_info_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContactInfoPage extends ConsumerWidget {
  const ContactInfoPage({
    super.key,
    required this.contact,
  });

  final ContactEntity contact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: contactInfoAppBarWidget(context, contact),
      body: Stack(
        children: [
          Container(
            height: 180,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.lightBlueAccent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 72,
                    backgroundColor: Colors.white,
                    backgroundImage: contact.imageData != null
                        ? MemoryImage(contact.imageData!)
                        : null,
                    child: contact.imageData == null
                        ? Text(
                            contact.fullName.substring(0, 1).toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: Colors.blueAccent,
                                  fontSize: 72,
                                ),
                          )
                        : null,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    contact.fullName,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  Text(
                    contact.address ?? "",
                    style: GoogleFonts.poppins(
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),
                  ContactInfoActionWidget(phoneNumber: contact.phoneNumber),
                  const SizedBox(height: 16),
                  ContactDetailTileWidget(
                    text: contact.phoneNumber,
                    iconData: Icons.call,
                    onTap: () {
                      ref
                          .read(urlLauchProvider.notifier)
                          .phoneCall(contact.phoneNumber);
                    },
                  ),
                  const SizedBox(height: 8),
                  contact.emailAddress == null || contact.emailAddress!.isEmpty
                      ? const SizedBox.shrink()
                      : ContactDetailTileWidget(
                          text: contact.emailAddress ?? "",
                          iconData: Icons.mail_outline,
                          onTap: () {
                            ref
                                .read(urlLauchProvider.notifier)
                                .mail(contact.emailAddress!);
                          },
                        ),
                  const SizedBox(height: 16),
                  // map view
                  contact.lat == null
                      ? const SizedBox.shrink()
                      : SizedBox(
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: GoogleMap(
                              initialCameraPosition: CameraPosition(
                                target: LatLng(contact.lat!, contact.long!),
                                zoom: 15,
                              ),
                              zoomControlsEnabled: false,
                              mapType: MapType.normal,
                              markers: {
                                Marker(
                                  markerId: const MarkerId("mark"),
                                  visible: true,
                                  position: LatLng(contact.lat!, contact.long!),
                                )
                              },
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

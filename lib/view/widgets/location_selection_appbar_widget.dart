import 'package:contact_app/controller/location_controller/location_search_provider.dart';
import 'package:contact_app/controller/location_controller/place_lat_long_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

AppBar locaSelectionAppBarWidget({
  required BuildContext context,
  required TextEditingController searchController,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
    ),
    title: Consumer(
      builder: (context, ref, _) => CupertinoSearchTextField(
        controller: searchController,
        backgroundColor: Colors.grey.shade300,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        prefixIcon: const Icon(Icons.search),
        suffixIcon: const Icon(Icons.close),
        suffixMode: OverlayVisibilityMode.always,
        onSuffixTap: () {
          searchController.clear();

          ref.invalidate(locationSearchProvider);

          ref.read(locationBtnProvider.notifier).state = false;
        },
        onChanged: (value) {
          if (searchController.text.isNotEmpty) {
            ref.read(locationBtnProvider.notifier).state = true;
          } else {
            ref.read(locationBtnProvider.notifier).state = false;
          }

          ref.read(locationSearchProvider.notifier).search(value);
        },
        onSubmitted: (value) {
          ref.read(locationSearchProvider.notifier).search(value);
        },
      ),
    ),
  );
}

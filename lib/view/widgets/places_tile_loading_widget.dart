import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PlacesTileLoadingWidget extends StatelessWidget {
  const PlacesTileLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Shimmer.fromColors(
        baseColor: Colors.white30,
        highlightColor: Colors.grey.shade200,
        child: Container(
          width: 40,
          height: 40,
          color: Colors.white,
        ),
      ),
      title: Shimmer.fromColors(
        baseColor: Colors.white30,
        highlightColor: Colors.grey.shade200,
        child: Container(
          width: double.infinity,
          height: 10,
          color: Colors.white,
        ),
      ),
      subtitle: Shimmer.fromColors(
        baseColor: Colors.white30,
        highlightColor: Colors.white,
        child: Container(
          width: double.infinity,
          height: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}

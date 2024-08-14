import 'package:contact_app/service/location_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_name_reduce_provider.g.dart';

@riverpod
String locationNameReduce(LocationNameReduceRef ref, String? locationName) {
  return LocationService.reduceName(locationName);
}

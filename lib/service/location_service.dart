import 'package:contact_app/core/constants/url_constants.dart';
import 'package:contact_app/core/exception/map_exception/google_map_exception.dart';
import 'package:contact_app/core/secert_key.dart';
import 'package:contact_app/model/lat_long_model/lat_long_model.dart';
import 'package:contact_app/model/place_model/place_model.dart';
import 'package:contact_app/model/place_suggestion_model/place_prediction.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

///Google map places service class
///This class for google map api calling for search locations and get long lat

final class LocationService {
  static final _dio = Dio(
    BaseOptions(
      baseUrl: UrlsConstants.googlePlaces,
    ),
  );

  ///search loacton by user inputs
  ///return the the suggested locations to search query
  static Future<dynamic> searchLocations(String searchQuery) async {
    try {
      final response = await _dio.post(
        ':autocomplete',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-Goog-Api-Key': SecertKey.googleMapApiKey,
          },
        ),
        queryParameters: {
          'input': searchQuery,
        },
      );

      if (response.statusCode == 200) {
        final result = response.data as Map<String, dynamic>;

        if (result.isEmpty) return [];

        final placesList = result["suggestions"] as List<dynamic>;

        return placesList
            .map(
              (data) => PlacePrediction.fromJson(data["placePrediction"]),
            )
            .toList();
      } else {
        throw GoogleMapException(
          responseMessage: response.statusMessage,
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw GoogleMapException(error: e.message);
    }
  }

  // convert place id to LatLong
  static Future<dynamic> getLatLong(String placeId) async {
    try {
      final response = await _dio.get(
        "/$placeId",
        options: Options(
          headers: {
            'X-Goog-Api-Key': SecertKey.googleMapApiKey,
            'X-Goog-FieldMask': 'location,displayName'
          },
        ),
      );

      if (response.statusCode == 200) {
        return LatLongModel.fromJson(response.data["location"]);
      } else {
        throw GoogleMapException(
          responseMessage: response.statusMessage,
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw GoogleMapException(error: e.message);
    }
  }

  static Future<PlaceModel> getPlaceDetailsFromLatLng(LatLng latLng) async {
    try {
      final response = await Dio().get(
        "${UrlsConstants.googleMaps}geocode/json",
        queryParameters: {
          'latlng': '${latLng.latitude},${latLng.longitude}',
          'key': SecertKey.googleMapApiKey,
        },
      );

      if (response.statusCode == 200) {
        return PlaceModel.fromJson(response.data);
      } else {
        throw GoogleMapException(
          responseMessage: response.statusMessage,
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw GoogleMapException(error: e.message);
    }
  }

  static String reduceName(String? locationName) {
    if (locationName == null || locationName.isEmpty) return '';

    final words = locationName.split(',');

    final filteredWords = words.where((word) {
      return !RegExp(r'\b[A-Z0-9]+\+[A-Z0-9]+\b').hasMatch(word.trim());
    }).toList();

    if (filteredWords.length > 3) {
      filteredWords.removeRange(2, filteredWords.length);
    }

    return filteredWords.join(',').replaceAll(RegExp(r',\s*$'), '').trim();
  }
}

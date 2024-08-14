// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlacePredictionImpl _$$PlacePredictionImplFromJson(
        Map<String, dynamic> json) =>
    _$PlacePredictionImpl(
      place: json['place'] as String?,
      placeId: json['placeId'] as String?,
      text: json['text'] == null
          ? null
          : Text.fromJson(json['text'] as Map<String, dynamic>),
      structuredFormat: json['structuredFormat'] == null
          ? null
          : StructuredFormat.fromJson(
              json['structuredFormat'] as Map<String, dynamic>),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PlacePredictionImplToJson(
        _$PlacePredictionImpl instance) =>
    <String, dynamic>{
      'place': instance.place,
      'placeId': instance.placeId,
      'text': instance.text,
      'structuredFormat': instance.structuredFormat,
      'types': instance.types,
    };

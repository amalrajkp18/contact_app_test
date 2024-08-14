// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_long_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatLongModelImpl _$$LatLongModelImplFromJson(Map<String, dynamic> json) =>
    _$LatLongModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LatLongModelImplToJson(_$LatLongModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextImpl _$$TextImplFromJson(Map<String, dynamic> json) => _$TextImpl(
      text: json['text'] as String?,
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => Match.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TextImplToJson(_$TextImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'matches': instance.matches,
    };

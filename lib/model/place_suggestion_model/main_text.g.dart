// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainTextImpl _$$MainTextImplFromJson(Map<String, dynamic> json) =>
    _$MainTextImpl(
      text: json['text'] as String?,
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => Match.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MainTextImplToJson(_$MainTextImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'matches': instance.matches,
    };

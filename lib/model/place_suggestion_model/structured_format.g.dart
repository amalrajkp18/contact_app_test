// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StructuredFormatImpl _$$StructuredFormatImplFromJson(
        Map<String, dynamic> json) =>
    _$StructuredFormatImpl(
      mainText: json['mainText'] == null
          ? null
          : MainText.fromJson(json['mainText'] as Map<String, dynamic>),
      secondaryText: json['secondaryText'] == null
          ? null
          : SecondaryText.fromJson(
              json['secondaryText'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StructuredFormatImplToJson(
        _$StructuredFormatImpl instance) =>
    <String, dynamic>{
      'mainText': instance.mainText,
      'secondaryText': instance.secondaryText,
    };

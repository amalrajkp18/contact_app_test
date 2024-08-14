// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlacePrediction _$PlacePredictionFromJson(Map<String, dynamic> json) {
  return _PlacePrediction.fromJson(json);
}

/// @nodoc
mixin _$PlacePrediction {
  String? get place => throw _privateConstructorUsedError;
  String? get placeId => throw _privateConstructorUsedError;
  Text? get text => throw _privateConstructorUsedError;
  StructuredFormat? get structuredFormat => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacePredictionCopyWith<PlacePrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacePredictionCopyWith<$Res> {
  factory $PlacePredictionCopyWith(
          PlacePrediction value, $Res Function(PlacePrediction) then) =
      _$PlacePredictionCopyWithImpl<$Res, PlacePrediction>;
  @useResult
  $Res call(
      {String? place,
      String? placeId,
      Text? text,
      StructuredFormat? structuredFormat,
      List<String>? types});

  $TextCopyWith<$Res>? get text;
  $StructuredFormatCopyWith<$Res>? get structuredFormat;
}

/// @nodoc
class _$PlacePredictionCopyWithImpl<$Res, $Val extends PlacePrediction>
    implements $PlacePredictionCopyWith<$Res> {
  _$PlacePredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
    Object? placeId = freezed,
    Object? text = freezed,
    Object? structuredFormat = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Text?,
      structuredFormat: freezed == structuredFormat
          ? _value.structuredFormat
          : structuredFormat // ignore: cast_nullable_to_non_nullable
              as StructuredFormat?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $TextCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StructuredFormatCopyWith<$Res>? get structuredFormat {
    if (_value.structuredFormat == null) {
      return null;
    }

    return $StructuredFormatCopyWith<$Res>(_value.structuredFormat!, (value) {
      return _then(_value.copyWith(structuredFormat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlacePredictionImplCopyWith<$Res>
    implements $PlacePredictionCopyWith<$Res> {
  factory _$$PlacePredictionImplCopyWith(_$PlacePredictionImpl value,
          $Res Function(_$PlacePredictionImpl) then) =
      __$$PlacePredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? place,
      String? placeId,
      Text? text,
      StructuredFormat? structuredFormat,
      List<String>? types});

  @override
  $TextCopyWith<$Res>? get text;
  @override
  $StructuredFormatCopyWith<$Res>? get structuredFormat;
}

/// @nodoc
class __$$PlacePredictionImplCopyWithImpl<$Res>
    extends _$PlacePredictionCopyWithImpl<$Res, _$PlacePredictionImpl>
    implements _$$PlacePredictionImplCopyWith<$Res> {
  __$$PlacePredictionImplCopyWithImpl(
      _$PlacePredictionImpl _value, $Res Function(_$PlacePredictionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
    Object? placeId = freezed,
    Object? text = freezed,
    Object? structuredFormat = freezed,
    Object? types = freezed,
  }) {
    return _then(_$PlacePredictionImpl(
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Text?,
      structuredFormat: freezed == structuredFormat
          ? _value.structuredFormat
          : structuredFormat // ignore: cast_nullable_to_non_nullable
              as StructuredFormat?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacePredictionImpl implements _PlacePrediction {
  _$PlacePredictionImpl(
      {this.place,
      this.placeId,
      this.text,
      this.structuredFormat,
      final List<String>? types})
      : _types = types;

  factory _$PlacePredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacePredictionImplFromJson(json);

  @override
  final String? place;
  @override
  final String? placeId;
  @override
  final Text? text;
  @override
  final StructuredFormat? structuredFormat;
  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlacePrediction(place: $place, placeId: $placeId, text: $text, structuredFormat: $structuredFormat, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacePredictionImpl &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.structuredFormat, structuredFormat) ||
                other.structuredFormat == structuredFormat) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, place, placeId, text,
      structuredFormat, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacePredictionImplCopyWith<_$PlacePredictionImpl> get copyWith =>
      __$$PlacePredictionImplCopyWithImpl<_$PlacePredictionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacePredictionImplToJson(
      this,
    );
  }
}

abstract class _PlacePrediction implements PlacePrediction {
  factory _PlacePrediction(
      {final String? place,
      final String? placeId,
      final Text? text,
      final StructuredFormat? structuredFormat,
      final List<String>? types}) = _$PlacePredictionImpl;

  factory _PlacePrediction.fromJson(Map<String, dynamic> json) =
      _$PlacePredictionImpl.fromJson;

  @override
  String? get place;
  @override
  String? get placeId;
  @override
  Text? get text;
  @override
  StructuredFormat? get structuredFormat;
  @override
  List<String>? get types;
  @override
  @JsonKey(ignore: true)
  _$$PlacePredictionImplCopyWith<_$PlacePredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

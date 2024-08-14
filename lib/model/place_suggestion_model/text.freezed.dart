// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Text _$TextFromJson(Map<String, dynamic> json) {
  return _Text.fromJson(json);
}

/// @nodoc
mixin _$Text {
  String? get text => throw _privateConstructorUsedError;
  List<Match>? get matches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextCopyWith<Text> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextCopyWith<$Res> {
  factory $TextCopyWith(Text value, $Res Function(Text) then) =
      _$TextCopyWithImpl<$Res, Text>;
  @useResult
  $Res call({String? text, List<Match>? matches});
}

/// @nodoc
class _$TextCopyWithImpl<$Res, $Val extends Text>
    implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? matches = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: freezed == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextImplCopyWith<$Res> implements $TextCopyWith<$Res> {
  factory _$$TextImplCopyWith(
          _$TextImpl value, $Res Function(_$TextImpl) then) =
      __$$TextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, List<Match>? matches});
}

/// @nodoc
class __$$TextImplCopyWithImpl<$Res>
    extends _$TextCopyWithImpl<$Res, _$TextImpl>
    implements _$$TextImplCopyWith<$Res> {
  __$$TextImplCopyWithImpl(_$TextImpl _value, $Res Function(_$TextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? matches = freezed,
  }) {
    return _then(_$TextImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: freezed == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextImpl implements _Text {
  _$TextImpl({this.text, final List<Match>? matches}) : _matches = matches;

  factory _$TextImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextImplFromJson(json);

  @override
  final String? text;
  final List<Match>? _matches;
  @override
  List<Match>? get matches {
    final value = _matches;
    if (value == null) return null;
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Text(text: $text, matches: $matches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, const DeepCollectionEquality().hash(_matches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextImplCopyWith<_$TextImpl> get copyWith =>
      __$$TextImplCopyWithImpl<_$TextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextImplToJson(
      this,
    );
  }
}

abstract class _Text implements Text {
  factory _Text({final String? text, final List<Match>? matches}) = _$TextImpl;

  factory _Text.fromJson(Map<String, dynamic> json) = _$TextImpl.fromJson;

  @override
  String? get text;
  @override
  List<Match>? get matches;
  @override
  @JsonKey(ignore: true)
  _$$TextImplCopyWith<_$TextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

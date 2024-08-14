// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secondary_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecondaryText _$SecondaryTextFromJson(Map<String, dynamic> json) {
  return _SecondaryText.fromJson(json);
}

/// @nodoc
mixin _$SecondaryText {
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecondaryTextCopyWith<SecondaryText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondaryTextCopyWith<$Res> {
  factory $SecondaryTextCopyWith(
          SecondaryText value, $Res Function(SecondaryText) then) =
      _$SecondaryTextCopyWithImpl<$Res, SecondaryText>;
  @useResult
  $Res call({String? text});
}

/// @nodoc
class _$SecondaryTextCopyWithImpl<$Res, $Val extends SecondaryText>
    implements $SecondaryTextCopyWith<$Res> {
  _$SecondaryTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecondaryTextImplCopyWith<$Res>
    implements $SecondaryTextCopyWith<$Res> {
  factory _$$SecondaryTextImplCopyWith(
          _$SecondaryTextImpl value, $Res Function(_$SecondaryTextImpl) then) =
      __$$SecondaryTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text});
}

/// @nodoc
class __$$SecondaryTextImplCopyWithImpl<$Res>
    extends _$SecondaryTextCopyWithImpl<$Res, _$SecondaryTextImpl>
    implements _$$SecondaryTextImplCopyWith<$Res> {
  __$$SecondaryTextImplCopyWithImpl(
      _$SecondaryTextImpl _value, $Res Function(_$SecondaryTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$SecondaryTextImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecondaryTextImpl implements _SecondaryText {
  _$SecondaryTextImpl({this.text});

  factory _$SecondaryTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecondaryTextImplFromJson(json);

  @override
  final String? text;

  @override
  String toString() {
    return 'SecondaryText(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondaryTextImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondaryTextImplCopyWith<_$SecondaryTextImpl> get copyWith =>
      __$$SecondaryTextImplCopyWithImpl<_$SecondaryTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecondaryTextImplToJson(
      this,
    );
  }
}

abstract class _SecondaryText implements SecondaryText {
  factory _SecondaryText({final String? text}) = _$SecondaryTextImpl;

  factory _SecondaryText.fromJson(Map<String, dynamic> json) =
      _$SecondaryTextImpl.fromJson;

  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$SecondaryTextImplCopyWith<_$SecondaryTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

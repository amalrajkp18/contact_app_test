// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainText _$MainTextFromJson(Map<String, dynamic> json) {
  return _MainText.fromJson(json);
}

/// @nodoc
mixin _$MainText {
  String? get text => throw _privateConstructorUsedError;
  List<Match>? get matches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainTextCopyWith<MainText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTextCopyWith<$Res> {
  factory $MainTextCopyWith(MainText value, $Res Function(MainText) then) =
      _$MainTextCopyWithImpl<$Res, MainText>;
  @useResult
  $Res call({String? text, List<Match>? matches});
}

/// @nodoc
class _$MainTextCopyWithImpl<$Res, $Val extends MainText>
    implements $MainTextCopyWith<$Res> {
  _$MainTextCopyWithImpl(this._value, this._then);

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
abstract class _$$MainTextImplCopyWith<$Res>
    implements $MainTextCopyWith<$Res> {
  factory _$$MainTextImplCopyWith(
          _$MainTextImpl value, $Res Function(_$MainTextImpl) then) =
      __$$MainTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, List<Match>? matches});
}

/// @nodoc
class __$$MainTextImplCopyWithImpl<$Res>
    extends _$MainTextCopyWithImpl<$Res, _$MainTextImpl>
    implements _$$MainTextImplCopyWith<$Res> {
  __$$MainTextImplCopyWithImpl(
      _$MainTextImpl _value, $Res Function(_$MainTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? matches = freezed,
  }) {
    return _then(_$MainTextImpl(
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
class _$MainTextImpl implements _MainText {
  _$MainTextImpl({this.text, final List<Match>? matches}) : _matches = matches;

  factory _$MainTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainTextImplFromJson(json);

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
    return 'MainText(text: $text, matches: $matches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainTextImpl &&
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
  _$$MainTextImplCopyWith<_$MainTextImpl> get copyWith =>
      __$$MainTextImplCopyWithImpl<_$MainTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainTextImplToJson(
      this,
    );
  }
}

abstract class _MainText implements MainText {
  factory _MainText({final String? text, final List<Match>? matches}) =
      _$MainTextImpl;

  factory _MainText.fromJson(Map<String, dynamic> json) =
      _$MainTextImpl.fromJson;

  @override
  String? get text;
  @override
  List<Match>? get matches;
  @override
  @JsonKey(ignore: true)
  _$$MainTextImplCopyWith<_$MainTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

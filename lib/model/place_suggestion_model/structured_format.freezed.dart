// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'structured_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StructuredFormat _$StructuredFormatFromJson(Map<String, dynamic> json) {
  return _StructuredFormat.fromJson(json);
}

/// @nodoc
mixin _$StructuredFormat {
  MainText? get mainText => throw _privateConstructorUsedError;
  SecondaryText? get secondaryText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructuredFormatCopyWith<StructuredFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructuredFormatCopyWith<$Res> {
  factory $StructuredFormatCopyWith(
          StructuredFormat value, $Res Function(StructuredFormat) then) =
      _$StructuredFormatCopyWithImpl<$Res, StructuredFormat>;
  @useResult
  $Res call({MainText? mainText, SecondaryText? secondaryText});

  $MainTextCopyWith<$Res>? get mainText;
  $SecondaryTextCopyWith<$Res>? get secondaryText;
}

/// @nodoc
class _$StructuredFormatCopyWithImpl<$Res, $Val extends StructuredFormat>
    implements $StructuredFormatCopyWith<$Res> {
  _$StructuredFormatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainText = freezed,
    Object? secondaryText = freezed,
  }) {
    return _then(_value.copyWith(
      mainText: freezed == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as MainText?,
      secondaryText: freezed == secondaryText
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as SecondaryText?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainTextCopyWith<$Res>? get mainText {
    if (_value.mainText == null) {
      return null;
    }

    return $MainTextCopyWith<$Res>(_value.mainText!, (value) {
      return _then(_value.copyWith(mainText: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SecondaryTextCopyWith<$Res>? get secondaryText {
    if (_value.secondaryText == null) {
      return null;
    }

    return $SecondaryTextCopyWith<$Res>(_value.secondaryText!, (value) {
      return _then(_value.copyWith(secondaryText: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StructuredFormatImplCopyWith<$Res>
    implements $StructuredFormatCopyWith<$Res> {
  factory _$$StructuredFormatImplCopyWith(_$StructuredFormatImpl value,
          $Res Function(_$StructuredFormatImpl) then) =
      __$$StructuredFormatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainText? mainText, SecondaryText? secondaryText});

  @override
  $MainTextCopyWith<$Res>? get mainText;
  @override
  $SecondaryTextCopyWith<$Res>? get secondaryText;
}

/// @nodoc
class __$$StructuredFormatImplCopyWithImpl<$Res>
    extends _$StructuredFormatCopyWithImpl<$Res, _$StructuredFormatImpl>
    implements _$$StructuredFormatImplCopyWith<$Res> {
  __$$StructuredFormatImplCopyWithImpl(_$StructuredFormatImpl _value,
      $Res Function(_$StructuredFormatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainText = freezed,
    Object? secondaryText = freezed,
  }) {
    return _then(_$StructuredFormatImpl(
      mainText: freezed == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as MainText?,
      secondaryText: freezed == secondaryText
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as SecondaryText?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructuredFormatImpl implements _StructuredFormat {
  _$StructuredFormatImpl({this.mainText, this.secondaryText});

  factory _$StructuredFormatImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructuredFormatImplFromJson(json);

  @override
  final MainText? mainText;
  @override
  final SecondaryText? secondaryText;

  @override
  String toString() {
    return 'StructuredFormat(mainText: $mainText, secondaryText: $secondaryText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructuredFormatImpl &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainText, secondaryText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructuredFormatImplCopyWith<_$StructuredFormatImpl> get copyWith =>
      __$$StructuredFormatImplCopyWithImpl<_$StructuredFormatImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructuredFormatImplToJson(
      this,
    );
  }
}

abstract class _StructuredFormat implements StructuredFormat {
  factory _StructuredFormat(
      {final MainText? mainText,
      final SecondaryText? secondaryText}) = _$StructuredFormatImpl;

  factory _StructuredFormat.fromJson(Map<String, dynamic> json) =
      _$StructuredFormatImpl.fromJson;

  @override
  MainText? get mainText;
  @override
  SecondaryText? get secondaryText;
  @override
  @JsonKey(ignore: true)
  _$$StructuredFormatImplCopyWith<_$StructuredFormatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

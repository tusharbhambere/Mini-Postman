// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'setting_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingDetailTearOff {
  const _$SettingDetailTearOff();

  _SettingDetail call({required String language, required String themeMode}) {
    return _SettingDetail(
      language: language,
      themeMode: themeMode,
    );
  }
}

/// @nodoc
const $SettingDetail = _$SettingDetailTearOff();

/// @nodoc
mixin _$SettingDetail {
  String get language => throw _privateConstructorUsedError;
  String get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingDetailCopyWith<SettingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingDetailCopyWith<$Res> {
  factory $SettingDetailCopyWith(
          SettingDetail value, $Res Function(SettingDetail) then) =
      _$SettingDetailCopyWithImpl<$Res>;
  $Res call({String language, String themeMode});
}

/// @nodoc
class _$SettingDetailCopyWithImpl<$Res>
    implements $SettingDetailCopyWith<$Res> {
  _$SettingDetailCopyWithImpl(this._value, this._then);

  final SettingDetail _value;
  // ignore: unused_field
  final $Res Function(SettingDetail) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SettingDetailCopyWith<$Res>
    implements $SettingDetailCopyWith<$Res> {
  factory _$SettingDetailCopyWith(
          _SettingDetail value, $Res Function(_SettingDetail) then) =
      __$SettingDetailCopyWithImpl<$Res>;
  @override
  $Res call({String language, String themeMode});
}

/// @nodoc
class __$SettingDetailCopyWithImpl<$Res>
    extends _$SettingDetailCopyWithImpl<$Res>
    implements _$SettingDetailCopyWith<$Res> {
  __$SettingDetailCopyWithImpl(
      _SettingDetail _value, $Res Function(_SettingDetail) _then)
      : super(_value, (v) => _then(v as _SettingDetail));

  @override
  _SettingDetail get _value => super._value as _SettingDetail;

  @override
  $Res call({
    Object? language = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_SettingDetail(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SettingDetail implements _SettingDetail {
  const _$_SettingDetail({required this.language, required this.themeMode});

  @override
  final String language;
  @override
  final String themeMode;

  @override
  String toString() {
    return 'SettingDetail(language: $language, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingDetail &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(themeMode);

  @JsonKey(ignore: true)
  @override
  _$SettingDetailCopyWith<_SettingDetail> get copyWith =>
      __$SettingDetailCopyWithImpl<_SettingDetail>(this, _$identity);
}

abstract class _SettingDetail implements SettingDetail {
  const factory _SettingDetail(
      {required String language, required String themeMode}) = _$_SettingDetail;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get themeMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingDetailCopyWith<_SettingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

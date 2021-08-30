// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingStateTearOff {
  const _$SettingStateTearOff();

  _SettingStateInitial initial() {
    return const _SettingStateInitial();
  }

  _SettingStateLoading loading() {
    return const _SettingStateLoading();
  }

  _SettingStateData data({required SettingDetail detail}) {
    return _SettingStateData(
      detail: detail,
    );
  }

  _SettingStateError error({String? error}) {
    return _SettingStateError(
      error: error,
    );
  }
}

/// @nodoc
const $SettingState = _$SettingStateTearOff();

/// @nodoc
mixin _$SettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingDetail detail) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingDetail detail)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingStateInitial value) initial,
    required TResult Function(_SettingStateLoading value) loading,
    required TResult Function(_SettingStateData value) data,
    required TResult Function(_SettingStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingStateInitial value)? initial,
    TResult Function(_SettingStateLoading value)? loading,
    TResult Function(_SettingStateData value)? data,
    TResult Function(_SettingStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;
}

/// @nodoc
abstract class _$SettingStateInitialCopyWith<$Res> {
  factory _$SettingStateInitialCopyWith(_SettingStateInitial value,
          $Res Function(_SettingStateInitial) then) =
      __$SettingStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SettingStateInitialCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateInitialCopyWith<$Res> {
  __$SettingStateInitialCopyWithImpl(
      _SettingStateInitial _value, $Res Function(_SettingStateInitial) _then)
      : super(_value, (v) => _then(v as _SettingStateInitial));

  @override
  _SettingStateInitial get _value => super._value as _SettingStateInitial;
}

/// @nodoc

class _$_SettingStateInitial implements _SettingStateInitial {
  const _$_SettingStateInitial();

  @override
  String toString() {
    return 'SettingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SettingStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingDetail detail) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingDetail detail)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingStateInitial value) initial,
    required TResult Function(_SettingStateLoading value) loading,
    required TResult Function(_SettingStateData value) data,
    required TResult Function(_SettingStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingStateInitial value)? initial,
    TResult Function(_SettingStateLoading value)? loading,
    TResult Function(_SettingStateData value)? data,
    TResult Function(_SettingStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SettingStateInitial implements SettingState {
  const factory _SettingStateInitial() = _$_SettingStateInitial;
}

/// @nodoc
abstract class _$SettingStateLoadingCopyWith<$Res> {
  factory _$SettingStateLoadingCopyWith(_SettingStateLoading value,
          $Res Function(_SettingStateLoading) then) =
      __$SettingStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SettingStateLoadingCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateLoadingCopyWith<$Res> {
  __$SettingStateLoadingCopyWithImpl(
      _SettingStateLoading _value, $Res Function(_SettingStateLoading) _then)
      : super(_value, (v) => _then(v as _SettingStateLoading));

  @override
  _SettingStateLoading get _value => super._value as _SettingStateLoading;
}

/// @nodoc

class _$_SettingStateLoading implements _SettingStateLoading {
  const _$_SettingStateLoading();

  @override
  String toString() {
    return 'SettingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SettingStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingDetail detail) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingDetail detail)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingStateInitial value) initial,
    required TResult Function(_SettingStateLoading value) loading,
    required TResult Function(_SettingStateData value) data,
    required TResult Function(_SettingStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingStateInitial value)? initial,
    TResult Function(_SettingStateLoading value)? loading,
    TResult Function(_SettingStateData value)? data,
    TResult Function(_SettingStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SettingStateLoading implements SettingState {
  const factory _SettingStateLoading() = _$_SettingStateLoading;
}

/// @nodoc
abstract class _$SettingStateDataCopyWith<$Res> {
  factory _$SettingStateDataCopyWith(
          _SettingStateData value, $Res Function(_SettingStateData) then) =
      __$SettingStateDataCopyWithImpl<$Res>;
  $Res call({SettingDetail detail});

  $SettingDetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$SettingStateDataCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateDataCopyWith<$Res> {
  __$SettingStateDataCopyWithImpl(
      _SettingStateData _value, $Res Function(_SettingStateData) _then)
      : super(_value, (v) => _then(v as _SettingStateData));

  @override
  _SettingStateData get _value => super._value as _SettingStateData;

  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_SettingStateData(
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as SettingDetail,
    ));
  }

  @override
  $SettingDetailCopyWith<$Res> get detail {
    return $SettingDetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }
}

/// @nodoc

class _$_SettingStateData implements _SettingStateData {
  const _$_SettingStateData({required this.detail});

  @override
  final SettingDetail detail;

  @override
  String toString() {
    return 'SettingState.data(detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingStateData &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(detail);

  @JsonKey(ignore: true)
  @override
  _$SettingStateDataCopyWith<_SettingStateData> get copyWith =>
      __$SettingStateDataCopyWithImpl<_SettingStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingDetail detail) data,
    required TResult Function(String? error) error,
  }) {
    return data(detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingDetail detail)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingStateInitial value) initial,
    required TResult Function(_SettingStateLoading value) loading,
    required TResult Function(_SettingStateData value) data,
    required TResult Function(_SettingStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingStateInitial value)? initial,
    TResult Function(_SettingStateLoading value)? loading,
    TResult Function(_SettingStateData value)? data,
    TResult Function(_SettingStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _SettingStateData implements SettingState {
  const factory _SettingStateData({required SettingDetail detail}) =
      _$_SettingStateData;

  SettingDetail get detail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SettingStateDataCopyWith<_SettingStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SettingStateErrorCopyWith<$Res> {
  factory _$SettingStateErrorCopyWith(
          _SettingStateError value, $Res Function(_SettingStateError) then) =
      __$SettingStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$SettingStateErrorCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateErrorCopyWith<$Res> {
  __$SettingStateErrorCopyWithImpl(
      _SettingStateError _value, $Res Function(_SettingStateError) _then)
      : super(_value, (v) => _then(v as _SettingStateError));

  @override
  _SettingStateError get _value => super._value as _SettingStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_SettingStateError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SettingStateError implements _SettingStateError {
  const _$_SettingStateError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'SettingState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$SettingStateErrorCopyWith<_SettingStateError> get copyWith =>
      __$SettingStateErrorCopyWithImpl<_SettingStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingDetail detail) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingDetail detail)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingStateInitial value) initial,
    required TResult Function(_SettingStateLoading value) loading,
    required TResult Function(_SettingStateData value) data,
    required TResult Function(_SettingStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingStateInitial value)? initial,
    TResult Function(_SettingStateLoading value)? loading,
    TResult Function(_SettingStateData value)? data,
    TResult Function(_SettingStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SettingStateError implements SettingState {
  const factory _SettingStateError({String? error}) = _$_SettingStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SettingStateErrorCopyWith<_SettingStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

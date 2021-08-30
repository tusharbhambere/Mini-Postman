// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResponseModelTearOff {
  const _$ResponseModelTearOff();

  _ResponseModel call(
      {required int responsecode,
      required String status,
      required String newBody,
      required int ping}) {
    return _ResponseModel(
      responsecode: responsecode,
      status: status,
      newBody: newBody,
      ping: ping,
    );
  }
}

/// @nodoc
const $ResponseModel = _$ResponseModelTearOff();

/// @nodoc
mixin _$ResponseModel {
  int get responsecode => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get newBody => throw _privateConstructorUsedError;
  int get ping => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res>;
  $Res call({int responsecode, String status, String newBody, int ping});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  final ResponseModel _value;
  // ignore: unused_field
  final $Res Function(ResponseModel) _then;

  @override
  $Res call({
    Object? responsecode = freezed,
    Object? status = freezed,
    Object? newBody = freezed,
    Object? ping = freezed,
  }) {
    return _then(_value.copyWith(
      responsecode: responsecode == freezed
          ? _value.responsecode
          : responsecode // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      newBody: newBody == freezed
          ? _value.newBody
          : newBody // ignore: cast_nullable_to_non_nullable
              as String,
      ping: ping == freezed
          ? _value.ping
          : ping // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$ResponseModelCopyWith(
          _ResponseModel value, $Res Function(_ResponseModel) then) =
      __$ResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({int responsecode, String status, String newBody, int ping});
}

/// @nodoc
class __$ResponseModelCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res>
    implements _$ResponseModelCopyWith<$Res> {
  __$ResponseModelCopyWithImpl(
      _ResponseModel _value, $Res Function(_ResponseModel) _then)
      : super(_value, (v) => _then(v as _ResponseModel));

  @override
  _ResponseModel get _value => super._value as _ResponseModel;

  @override
  $Res call({
    Object? responsecode = freezed,
    Object? status = freezed,
    Object? newBody = freezed,
    Object? ping = freezed,
  }) {
    return _then(_ResponseModel(
      responsecode: responsecode == freezed
          ? _value.responsecode
          : responsecode // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      newBody: newBody == freezed
          ? _value.newBody
          : newBody // ignore: cast_nullable_to_non_nullable
              as String,
      ping: ping == freezed
          ? _value.ping
          : ping // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ResponseModel implements _ResponseModel {
  const _$_ResponseModel(
      {required this.responsecode,
      required this.status,
      required this.newBody,
      required this.ping});

  @override
  final int responsecode;
  @override
  final String status;
  @override
  final String newBody;
  @override
  final int ping;

  @override
  String toString() {
    return 'ResponseModel(responsecode: $responsecode, status: $status, newBody: $newBody, ping: $ping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseModel &&
            (identical(other.responsecode, responsecode) ||
                const DeepCollectionEquality()
                    .equals(other.responsecode, responsecode)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.newBody, newBody) ||
                const DeepCollectionEquality()
                    .equals(other.newBody, newBody)) &&
            (identical(other.ping, ping) ||
                const DeepCollectionEquality().equals(other.ping, ping)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(responsecode) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(newBody) ^
      const DeepCollectionEquality().hash(ping);

  @JsonKey(ignore: true)
  @override
  _$ResponseModelCopyWith<_ResponseModel> get copyWith =>
      __$ResponseModelCopyWithImpl<_ResponseModel>(this, _$identity);
}

abstract class _ResponseModel implements ResponseModel {
  const factory _ResponseModel(
      {required int responsecode,
      required String status,
      required String newBody,
      required int ping}) = _$_ResponseModel;

  @override
  int get responsecode => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get newBody => throw _privateConstructorUsedError;
  @override
  int get ping => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResponseModelCopyWith<_ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

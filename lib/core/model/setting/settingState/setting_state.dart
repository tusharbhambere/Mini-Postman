import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_postman/core/model/setting/settingDetail/setting_detail.dart';
part 'setting_state.freezed.dart';

@freezed
abstract class SettingState with _$SettingState {
  const factory SettingState.initial() = _SettingStateInitial;
  const factory SettingState.loading() = _SettingStateLoading;
  const factory SettingState.data({required SettingDetail detail}) =
      _SettingStateData;
  const factory SettingState.error({String? error}) = _SettingStateError;
}

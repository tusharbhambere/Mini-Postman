import 'package:freezed_annotation/freezed_annotation.dart';
part 'setting_detail.freezed.dart';

@freezed
abstract class SettingDetail with _$SettingDetail {
  const factory SettingDetail({
    required String language,
    required String themeMode,
  }) = _SettingDetail;
}

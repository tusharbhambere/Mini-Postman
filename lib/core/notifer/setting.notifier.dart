import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/app/constant.dart';
import 'package:mini_postman/core/model/setting/settingDetail/setting_detail.dart';
import 'package:mini_postman/core/model/setting/settingState/setting_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

final settingProvider =
    StateNotifierProvider<SettingNotifier, SettingState>((ref) {
  return SettingNotifier(ref.read);
});

class SettingNotifier extends StateNotifier<SettingState> {
  SettingNotifier(this.reader) : super(const SettingState.initial()) {
    loadData();
  }
  final Reader reader;
  late SettingDetail detail;
  // ignore: avoid_void_async
  void loadData() async {
    state = const SettingState.loading();
    final SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();
    final language = _sharedPreferences.getString(constant.languagekey) ??
        constant.defaultLanguage;
    final themeMode = _sharedPreferences.getString(constant.themekey) ??
        constant.defaultTheme;
    detail = SettingDetail(language: language, themeMode: themeMode);
    state = SettingState.data(detail: detail);
  }

  // ignore: avoid_void_async
  void setLanguage(String language) async {
    state = const SettingState.loading();
    final SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();
    await _sharedPreferences.setString(constant.languagekey, language);
    detail = detail.copyWith(language: language);
    state = SettingState.data(detail: detail);
  }

  // ignore: avoid_void_async
  void setTheme(String theme) async {
    state = const SettingState.loading();
    final SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();
    await _sharedPreferences.setString(constant.themekey, theme);
    detail = detail.copyWith(themeMode: theme);
    state = SettingState.data(detail: detail);
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/app/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

final defaultProvider = StateProvider<bool>((ref) {
  return false;
});

final initiliazeProvider =
    StateNotifierProvider.autoDispose((ref) => InitiliazeNotifier());

//!final
final checkUserOnBoarding = FutureProvider.autoDispose((ref) async {
  final session = ref.read(initiliazeProvider.notifier);
  final result = await session.getOnBoarding();
  ref.read(defaultProvider).state = result;
});

class InitiliazeNotifier extends StateNotifier {
  InitiliazeNotifier() : super(null);

  Future<bool> setOnboard({required bool value}) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final result = sharedPreferences.setBool(constant.onBoardingKey, value);
    return result;
  }

  Future<bool> getOnBoarding() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final result = sharedPreferences.getBool(constant.onBoardingKey);
    if (result == null) {
      return false;
    } else {
      return result;
    }
  }
}

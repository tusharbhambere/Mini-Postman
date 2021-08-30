import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/app/apptheme.dart';
import 'package:mini_postman/app/constant.dart';
import 'package:mini_postman/app/routes/app_routes.dart';
import 'package:mini_postman/core/notifer/setting.notifier.dart';
import 'package:mini_postman/meta/splashScreen/splash_screen.dart';

import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Sentry.init(
    (option) => option.dsn = constant.dsnSentry,
    appRunner: () => runApp(EasyLocalization(
        path: 'assets/translation',
        fallbackLocale: const Locale('en'),
        supportedLocales: const [Locale('en'), Locale('hi'), Locale('es')],
        child: ProviderScope(child: MyApp()))),
  );
}

class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themesdata = ref.watch(settingProvider);
    final themeModes = themesdata.maybeWhen(
      data: (data) => constant.getThemeMode(data.themeMode),
      orElse: () => ThemeMode.system,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      themeMode: themeModes,
      theme: AppThemed.light,
      darkTheme: AppThemed.dark,
      title: 'Mini PostMan',
      home: const SplashScreen(),
      onGenerateRoute: route.configure,
    );
  }
}

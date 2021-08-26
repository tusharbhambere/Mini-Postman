import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/app/apptheme.dart';
import 'package:mini_postman/app/constant.dart';
import 'package:mini_postman/app/routes/app_routes.dart';
import 'package:mini_postman/meta/splashScreen/splash_screen.dart';

import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  await Sentry.init(
    (option) => option.dsn = constant.dsnSentry,
    appRunner: () => runApp(ProviderScope(child: MyApp())),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemed.light,
      title: 'Flutter Demo',
      home: const SplashScreen(),
      onGenerateRoute: route.configure,
    );
  }
}

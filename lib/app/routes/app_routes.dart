import 'package:flutter/material.dart';
import 'package:global_template/functions/global_function.dart';
import 'package:mini_postman/meta/home_page.dart';
import 'package:mini_postman/meta/onBoardingscreen/onBoarding_screen.dart';
import 'package:mini_postman/meta/splashScreen/splash_screen.dart';

class MyRoutes {
  Route<dynamic>? configure(RouteSettings settings) {
    final route = RouteAnimation();

    switch (settings.name) {
      case SplashScreen.route:
        return route.fadeTransition(
          screen: (ctx, animation, secondaryAnimation) => const SplashScreen(),
        );
      case HomePage.route:
        return route.fadeTransition(
            screen: (ctx, animation, secondaryAnimation) => HomePage());

      case OnBoarding.route:
        return route.scaleTransition(
          screen: (ctx, animation, secondaryAnimation) => const OnBoarding(),
        );

      default:
    }
  }
}

final route = MyRoutes();

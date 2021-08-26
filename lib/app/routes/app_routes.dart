import 'package:flutter/material.dart';
import 'package:global_template/functions/global_function.dart';
import 'package:mini_postman/meta/Home/home.dart';
import 'package:mini_postman/meta/Home/methods/RequestAll/request.dart';
import 'package:mini_postman/meta/Home/methods/Response/response.dart';
import 'package:mini_postman/meta/onBoardingscreen/onBoarding_screen.dart';
import 'package:mini_postman/meta/splashScreen/splash_screen.dart';

class MyRoutes {
  Route<dynamic>? configure(RouteSettings settings) {
    final route = RouteAnimation();

    switch (settings.name) {
      case SplashScreen.route:
        return route.fadeTransition(
          screen: (ctx, animation, secondaryAnimation) => SplashScreen(),
        );
      case HomePage.route:
        return route.slideTransition(
          transitionDuration: Duration(milliseconds: 1500),
          slidePosition: SlidePosition.fromLeft,
          screen: (ctx, animation, secondaryAnimation) => HomePage(),
        );
      case OnBoarding.route:
        return route.scaleTransition(
          screen: (ctx, animation, secondaryAnimation) => OnBoarding(),
        );
      case ResponsePage.approute:
        return route.fadeTransition(
          screen: (ctx, animation, secondaryAnimation) => ResponsePage(),
        );
      case RequestTab.route:
        return route.fadeTransition(
          screen: (ctx, animation, secondaryAnimation) => RequestTab(),
        );

      default:
    }
  }
}

final route = MyRoutes();

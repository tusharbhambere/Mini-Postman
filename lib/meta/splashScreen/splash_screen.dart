import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/core/notifer/initialise.notifer.dart';
import 'package:mini_postman/meta/Home/home.dart';
import 'package:mini_postman/meta/onBoardingscreen/onBoarding_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends HookConsumerWidget {
  static const route = '/splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialize = ref.watch(checkUserOnBoarding);
    final onboarding = ref.read(defaultProvider).state;
    return initialize.when(
      data: (value) {
        return SplashScreenTemplate(
            backgroundColor: Colors.white,
            duration: 2,
            onDoneTimer: (isTimerDone) {
              if (!onboarding) {
                print(!onboarding);
                Navigator.of(context).pushReplacementNamed(OnBoarding.route);
              } else {
                Navigator.of(context).pushReplacementNamed(HomePage.route);
              }
            },
            children: [
              Spacer(),
              Image.asset('assets/images/splash.gif'),
              Spacer(),
            ]);
      },
      loading: () {
        return CircularProgressIndicator().centered();
      },
      error: (error, stackTrace) {
        return Text('errror');
      },
    );
  }
}

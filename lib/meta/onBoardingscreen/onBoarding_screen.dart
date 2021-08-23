import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/app/constant.dart';
import 'package:mini_postman/core/notifer/initialise.notifer.dart';
import 'package:mini_postman/meta/Home/home_page.dart';

class OnBoarding extends HookConsumerWidget {
  static const route = '/onboarding-screen';
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savingstate = ref.read(initiliazeProvider.notifier);
    return Scaffold(
      body: OnboardingPage(
        backgroundColorCircleIndicator: constant.mainColor,
        backgroundOnboarding: Colors.blueGrey,
        skipButtonStyle: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white)),
        iconNext: Icon(Icons.next_plan),
        skipTitleStyle: TextStyle(color: constant.mainColor, fontSize: 15),
        skipTitle: 'Skip',
        items: [
          OnboardingItem(
            animationType: OnboardingItemAnimationType.RTL,
            title: 'Get Method',
            titleStyle: fontsMontserratAlternate.copyWith(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            subtitle: 'Unlimated Api Calls',
            subtitleStyle: fontComfortaa.copyWith(color: Colors.white),
            logo: FractionallySizedBox(
                widthFactor: 4,
                child: Transform.rotate(
                  angle: 6.5,
                  child: Image.asset(
                    constant.imagePath + 'onboarding1.png',
                    height: 230,
                  ),
                )),
          ),
          OnboardingItem(title: 'Postman4'),
          OnboardingItem(title: 'Postman3'),
        ],
        onPageChanged: (value) => '',
        onClickNext: (value) => '',
        onClickFinish: () async {
          await savingstate.setOnboard(value: true);
          Navigator.of(context).pushReplacementNamed(HomePage.appRoute);
        },
      ),
    );
  }
}

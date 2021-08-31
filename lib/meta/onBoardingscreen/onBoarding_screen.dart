import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/app/constant.dart';
import 'package:mini_postman/core/notifer/initialise.notifer.dart';
import 'package:mini_postman/meta/home_page.dart';

class OnBoarding extends HookConsumerWidget {
  static const route = '/onboarding-screen';
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savingstate = ref.read(initiliazeProvider.notifier);
    return Scaffold(
      body: OnboardingPage(
        backgroundOnboarding: constant.mainColor,
        skipButtonStyle: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white)),
        iconNext: ShowImageAsset(
          fit: BoxFit.cover,
          imageSize: 10,
          imageUrl: 'assets/images/onbording.png',
          isCircle: true,
        ),
        skipTitleStyle: const TextStyle(fontSize: 15, color: Colors.black),
        skipTitle: 'Skip',
        items: [
          OnboardingItem(
            titleStyle: fontsMontserratAlternate.copyWith(fontSize: 25),
            animationType: OnboardingItemAnimationType.RTL,
            title: 'Quick CRUD Operation',
            subtitle: 'Unlimated Api Calls',
            subtitleStyle: fontComfortaa.copyWith(color: Colors.white),
            logo: FractionallySizedBox(
                widthFactor: 4,
                child: Transform.rotate(
                  angle: 6.5,
                  child: Image.asset(
                    '${constant.imagePath}onboarding1.png',
                    height: 230,
                  ),
                )),
          ),
          OnboardingItem(
            titleStyle: fontsMontserratAlternate.copyWith(fontSize: 20),
            title: 'Get RealTime Exceptions',
            subtitle: 'Text Json Response',
            subtitleStyle: fontComfortaa.copyWith(color: Colors.white),
            logo: FractionallySizedBox(
                widthFactor: 4,
                child: Transform.rotate(
                  angle: 6.5,
                  child: Image.asset(
                    '${constant.imagePath}onboarding3.png',
                    height: 230,
                  ),
                )),
          ),
          OnboardingItem(
            titleStyle: fontsMontserratAlternate.copyWith(fontSize: 20),
            title: 'Available in Multi Languages',
            subtitle: 'Support Multiple  Themes',
            subtitleStyle: fontComfortaa.copyWith(color: Colors.white),
            logo: FractionallySizedBox(
                widthFactor: 4,
                child: Transform.rotate(
                  angle: 6.5,
                  child: Image.asset(
                    '${constant.imagePath}onBoarding2.png',
                    height: 230,
                  ),
                )),
          ),
        ],
        onPageChanged: (value) => '',
        onClickNext: (value) => '',
        onClickFinish: () async {
          await savingstate.setOnboard(value: true);
          Navigator.of(context).pushReplacementNamed(HomePage.route);
        },
      ),
    );
  }
}

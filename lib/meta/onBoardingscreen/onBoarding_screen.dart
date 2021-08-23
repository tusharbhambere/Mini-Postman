import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
        iconNext: Icon(Icons.next_plan),
        skipTitle: 'Skip',
        items: [
          OnboardingItem(title: 'Postman'),
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

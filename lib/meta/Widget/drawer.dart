import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/app/constant.dart';
import 'package:mini_postman/app/generator/localization.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:mini_postman/core/notifer/setting.notifier.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:velocity_x/velocity_x.dart';

class DrawersMini extends HookConsumerWidget {
  const DrawersMini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setting = ref.watch(settingProvider);
    final details = setting.maybeWhen(
      data: (detail) => detail,
      orElse: () => null,
    );
    return details != null
        ? DrawerCustom(
            imageBuilder: Image.asset('assets/images/onboarding1.png'),
            detailUser: [
                LocaleKeys.homeTitle.tr().text.xl3.makeCentered()
              ],
            drawerMenu: [
                Expanded(
                    child: SettingsList(
                  sections: [
                    SettingsSection(
                      tiles: [
                        SettingsTile(
                          subtitle: details.language.tr(),
                          title: LocaleKeys.changeLanguage.tr(),
                          leading: const Icon(Icons.language),
                          onPressed: (context) {
                            showLanguageSelectDialog(
                                context, details.language, ref);
                          },
                        )
                      ],
                      title: LocaleKeys.language.tr(),
                    ),
                    SettingsSection(
                      tiles: [
                        SettingsTile(
                          subtitle: details.themeMode.tr(),
                          title: LocaleKeys.changeTheme.tr(),
                          leading: const Icon(Icons.graphic_eq),
                          onPressed: (context) {
                            showThemeSelectDialog(
                                context, ref, details.themeMode);
                          },
                        )
                      ],
                      title: LocaleKeys.theme.tr(),
                    ),
                    SettingsSection(
                      tiles: [
                        SettingsTile(
                          subtitle: LocaleKeys.playstore.tr(),
                          title: LocaleKeys.giveRating.tr(),
                          leading: const Icon(Icons.star_border),
                          onPressed: (context) {
                            //!open playstoree link
                          },
                        )
                      ],
                      title: LocaleKeys.rating.tr(),
                    )
                  ],
                )),
                const CopyRightVersion(
                  backgroundColor: Vx.gray600,
                  copyRight: '1.01',
                ),
                const SizedBox(
                  height: 20,
                )
              ])
        : const CircularProgressIndicator();
  }

  void showLanguageSelectDialog(
      BuildContext context, String currentLanguage, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: LocaleKeys.language.text.make(),
          // ignore: sized_box_for_whitespace
          content: Container(
            height: 150,
            child: VStack([
              Row(
                children: [
                  Radio<String>(
                    value: currentLanguage,
                    groupValue: LocaleKeys.english,
                    onChanged: (value) async {
                      await context.setLocale(const Locale('en'));
                      ref
                          .watch(settingProvider.notifier)
                          .setLanguage(LocaleKeys.english);
                      Navigator.of(context).pop();
                    },
                  ),
                  LocaleKeys.english.tr().text.make()
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: currentLanguage,
                    groupValue: LocaleKeys.hindi,
                    onChanged: (value) async {
                      await context.setLocale(const Locale('hi'));
                      ref
                          .watch(settingProvider.notifier)
                          .setLanguage(LocaleKeys.hindi);
                    },
                  ),
                  LocaleKeys.hindi.tr().text.make()
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: currentLanguage,
                    groupValue: LocaleKeys.spanish,
                    onChanged: (value) async {
                      await context.setLocale(const Locale('es'));
                      ref
                          .watch(settingProvider.notifier)
                          .setLanguage(LocaleKeys.spanish.tr());
                    },
                  ),
                  LocaleKeys.spanish.tr().text.make()
                ],
              )
            ]),
          ),
        );
      },
    );
  }

  void showThemeSelectDialog(
      BuildContext context, WidgetRef ref, String currentTheme) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // ignore: sized_box_for_whitespace
              height: 150,
              child: Column(
                children: constant.themeMode
                    .map((data) => GestureDetector(
                          onTap: () {
                            ref.read(settingProvider.notifier).setTheme(data);
                            Navigator.of(context).pop();
                          },
                          child: Row(
                            children: [
                              Radio<String>(
                                onChanged: (value) {
                                  ref
                                      .read(settingProvider.notifier)
                                      .setTheme(value!);
                                  Navigator.pop(context);
                                },
                                value: data,
                                groupValue: currentTheme,
                              ),
                              Text(
                                data,
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          );
        });
  }
}

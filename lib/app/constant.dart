import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Constant {
  ThemeMode getThemeMode(String type) {
    ThemeMode themeMode = ThemeMode.system;
    switch (type) {
      case "System":
        themeMode = ThemeMode.system;
        break;
      case "Dark":
        themeMode = ThemeMode.dark;
        break;
      case "Light":
        themeMode = ThemeMode.light;
        break;
    }
    return themeMode;
  }

  final List<String> items = ["GET", "POST", "PUT", "DELETE"];

  final themeMode = ["System", "Dark", "Light"];
  final Color mainColor = Vx.hexToColor('#EF5A24');
  String get imagePath => 'assets/images/';
  String get onBoardingKey => 'saveIt';

  String get dsnSentry =>
      'https://28e8da2b28664f58a3833f0f7b5eb217@o821166.ingest.sentry.io/5842506';
  //
  String get defaultLanguage => 'English';
  String get defaultTheme => 'System';
  //lang
  String get languagekey => 'language';
  String get themekey => 'thememode';
}

final fontsMontserratAlternate = GoogleFonts.montserratAlternates();
final fontComfortaa = GoogleFonts.comfortaa();

final constant = Constant();

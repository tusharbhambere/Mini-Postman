import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Constant {
  final Color mainColor = Vx.hexToColor('#EF5A24');
  String get imagePath => 'assets/images/';
  String get onBoardingKey => 'saveIt';
  String get dsnSentry =>
      'https://28e8da2b28664f58a3833f0f7b5eb217@o821166.ingest.sentry.io/5842506';
}

final fontsMontserratAlternate = GoogleFonts.montserratAlternates();
final fontComfortaa = GoogleFonts.comfortaa();

final constant = Constant();

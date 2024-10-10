import 'package:flutter/material.dart';

enum AppLocales {
  usa(Locale('en', 'US'));

  const AppLocales(this.locale);

  final Locale locale;

  String get key => '${locale.languageCode}_${locale.countryCode}';
}

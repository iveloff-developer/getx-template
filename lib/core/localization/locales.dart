import 'package:flutter/material.dart';

/// This enum is used to define the supported locales in the app.
enum AppLocales {
  usa(Locale('en', 'US')),
  ukraine(Locale('uk', 'UA'));

  const AppLocales(this.locale);

  final Locale locale;

  String get key => '${locale.languageCode}_${locale.countryCode}';
}

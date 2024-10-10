import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

final class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        AppLocales.usa.key: {
          AppTranslationsKeys.homeTitle.value: 'Home Page',
          AppTranslationsKeys.homeButton.value: 'Switch Theme',
          AppTranslationsKeys.unknownTitle.value: 'Unknown Page',
        },
      };
}

enum AppTranslationsKeys {
  homeTitle('home_title'),
  homeButton('home_button'),
  unknownTitle('unknown_title');

  const AppTranslationsKeys(this.value);

  final String value;
}

enum AppLocales {
  usa(Locale('en', 'US'));

  const AppLocales(this.locale);

  final Locale locale;

  String get key => '${locale.languageCode}_${locale.countryCode}';
}

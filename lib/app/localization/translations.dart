import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_template/app/localization/locales.dart';
import 'package:get_template/view/home/translation_keys.dart';
import 'package:get_template/view/unknown/translation_keys.dart';

final class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        AppLocales.usa.key: {
          // Home Page.
          HomePageTranslationKeys.title.key: 'Home Page',
          HomePageTranslationKeys.button.key: 'Switch Theme',
          // Unknown Page.
          UnknownPageTranslationKeys.title.key: 'Unknown Page',
        },
      };
}

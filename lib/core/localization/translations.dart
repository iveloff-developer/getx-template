import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_template/core/localization/locales.dart';
import 'package:get_template/presentation/pages/home/translation_keys.dart';
import 'package:get_template/presentation/pages/unknown/translation_keys.dart';

/// This class is used to define the translations for the app.
final class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => <String, Map<String, String>>{
        AppLocales.usa.key: <String, String>{
          // Home Page.
          HomePageTranslationKeys.title.key: 'Home Page',
          HomePageTranslationKeys.incrementButton.key: 'Increment Counter',
          HomePageTranslationKeys.changeThemeButton.key: 'Change Theme',
          HomePageTranslationKeys.updateLocaleButton.key: 'Update Locale',
          HomePageTranslationKeys.getValueButton.key: 'Get Value',
          HomePageTranslationKeys.counterText.key:
              'This many times you increment counter in that session',
          // Unknown Page.
          UnknownPageTranslationKeys.title.key: 'Unknown Page',
        },
        AppLocales.ukraine.key: <String, String>{
          // Home Page.
          HomePageTranslationKeys.title.key: 'Головна Сторінка',
          HomePageTranslationKeys.incrementButton.key: 'Збільшити Лічильник',
          HomePageTranslationKeys.changeThemeButton.key: 'Змінити Тему',
          HomePageTranslationKeys.updateLocaleButton.key: 'Оновити Локалізацію',
          HomePageTranslationKeys.getValueButton.key: 'Отримати Значення',
          HomePageTranslationKeys.counterText.key:
              'Це кількість разів, яку ви збільшили лічильник у цій сесії',
          // Unknown Page.
          UnknownPageTranslationKeys.title.key: 'Невідома Сторінка',
        },
      };
}

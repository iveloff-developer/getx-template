import 'package:get_template/core/localization/base_translation_keys.dart';

enum HomePageTranslationKeys implements BaseTranslationKeys {
  title('home_page_title'),
  incrementButton('home_page_increment_button'),
  changeThemeButton('home_page_change_theme_button'),
  updateLocaleButton('home_page_update_locale_button'),
  getValueButton('home_page_get_value_button'),
  counterText('home_page_counter_text');

  const HomePageTranslationKeys(this.key);

  @override
  final String key;
}

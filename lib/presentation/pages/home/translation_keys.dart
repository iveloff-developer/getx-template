import 'package:get_template/core/localization/base_translation_keys.dart';

enum HomePageTranslationKeys implements BaseTranslationKeys {
  title('home_page_title'),
  button('home_page_button');

  const HomePageTranslationKeys(this.key);

  @override
  final String key;
}

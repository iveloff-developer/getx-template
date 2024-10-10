import 'package:get_template/app/localization/base_translation_keys.dart';

enum UnknownPageTranslationKeys implements BaseTranslationKeys {
  title('unknown_page_title');

  const UnknownPageTranslationKeys(this.key);

  @override
  final String key;
}

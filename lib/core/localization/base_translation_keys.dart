import 'package:get/get.dart';

/// This interface class should be implemented by feature translation keys enums.
abstract interface class BaseTranslationKeys implements Enum {
  String get key;
}

extension BaseTranslationKeysExtension on BaseTranslationKeys {
  /// Syntactic sugar to use, for example: `HomePageTranslationKeys.title.text;`
  /// instead of `HomePageTranslationKeys.title.key.tr;`.
  String get text => key.tr;
}

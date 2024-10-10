import 'package:get/get.dart';

abstract interface class BaseTranslationKeys implements Enum {
  String get key;
}

extension BaseTranslationKeysExtension on BaseTranslationKeys {
  String get text => key.tr;
}

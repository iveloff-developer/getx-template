import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_template/core/binding.dart';
import 'package:get_template/core/localization/locales.dart';
import 'package:get_template/core/localization/translations.dart';
import 'package:get_template/core/router/router.dart';
import 'package:get_template/core/theme/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) => GetMaterialApp(
        // Dependency Management.
        initialBinding: AppBinding(),
        // Navigation.
        initialRoute: AppRouter.initialRoute,
        unknownRoute: AppRouter.unknownPage,
        getPages: AppRouter.pages,
        // Internationalization.
        translations: AppTranslations(),
        locale: Get.deviceLocale,
        fallbackLocale: AppLocales.usa.locale,
        // Theme.
        theme: AppThemes.light,
        darkTheme: AppThemes.dark,
      );
}

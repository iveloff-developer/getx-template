import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_template/app/binding.dart';
import 'package:get_template/app/router/router.dart';
import 'package:get_template/app/theme/themes.dart';
import 'package:get_template/app/translations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
}

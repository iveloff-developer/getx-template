import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_template/core/localization/base_translation_keys.dart';
import 'package:get_template/core/localization/locales.dart';
import 'package:get_template/presentation/pages/home/controller.dart';
import 'package:get_template/presentation/pages/home/translation_keys.dart';
import 'package:get_template/presentation/widgets/buttons/custom_button.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(HomePageTranslationKeys.title.text),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: <Widget>[
              GetBuilder<HomePageController>(
                builder: (final HomePageController state) => Text(
                  '${HomePageTranslationKeys.counterText.text}: ${state.counter}',
                ),
              ),
              CustomButton(
                onPressed: _onIncrementCounterPressed,
                child: Text(HomePageTranslationKeys.incrementButton.text),
              ),
              CustomButton(
                onPressed: _onChangeThemePressed,
                child: Text(HomePageTranslationKeys.changeThemeButton.text),
              ),
              CustomButton(
                onPressed: _onUpdateLocalePressed,
                child: Text(HomePageTranslationKeys.updateLocaleButton.text),
              ),
              GetBuilder<HomePageController>(
                builder: (final HomePageController state) {
                  if (state.isLoading) {
                    return const CircularProgressIndicator();
                  }

                  return Text(
                    '${state.exampleEntity?.value ?? state.errorMessage}',
                  );
                },
              ),
              CustomButton(
                onPressed: _onGetValuePressed,
                child: Text(HomePageTranslationKeys.getValueButton.text),
              ),
            ],
          ),
        ),
      );

  void _onIncrementCounterPressed() {
    HomePageController.to.increment();
  }

  void _onChangeThemePressed() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }

  Future<void> _onUpdateLocalePressed() async {
    if (Get.locale == AppLocales.ukraine.locale) {
      await Get.updateLocale(AppLocales.usa.locale);
      return;
    }

    await Get.updateLocale(AppLocales.ukraine.locale);
  }

  Future<void> _onGetValuePressed() async {
    await HomePageController.to.getData();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_template/core/localization/base_translation_keys.dart';
import 'package:get_template/presentation/pages/home/translation_keys.dart';
import 'package:get_template/presentation/widgets/buttons/custom_button.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(HomePageTranslationKeys.title.key.tr),
        ),
        body: Center(
          child: CustomButton(
            onPressed: () {
              Get.changeTheme(
                Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
              );
            },
            child: Text(HomePageTranslationKeys.button.text),
          ),
        ),
      );
}

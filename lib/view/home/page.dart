import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_template/app/translations.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslationsKeys.homeTitle.value.tr),
      ),
    );
  }
}

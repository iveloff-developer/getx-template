import 'package:flutter/material.dart';
import 'package:get_template/app/localization/base_translation_keys.dart';
import 'package:get_template/view/unknown/translation_keys.dart';

final class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(UnknownPageTranslationKeys.title.text),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:get_template/core/localization/base_translation_keys.dart';
import 'package:get_template/presentation/pages/unknown/translation_keys.dart';

final class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(UnknownPageTranslationKeys.title.text),
        ),
      );
}

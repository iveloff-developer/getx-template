import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_template/app/translations.dart';

final class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslationsKeys.unknownTitle.value.tr),
      ),
    );
  }
}

import 'dart:math';

import 'package:get_template/data/models/example.dart';

abstract interface class ExampleDataSource {
  Future<ExampleModel> getData();
}

final class ExampleDataSourceImpl implements ExampleDataSource {
  @override
  Future<ExampleModel> getData() async {
    try {
      final Random random = Random();
      final bool isValidJson = random.nextBool();

      final Map<String, String> externalJson =
          await Future<Map<String, String>>.delayed(
        const Duration(seconds: 1),
        () => isValidJson
            ? <String, String>{'value': 'example'}
            : <String, String>{'invalid_key': 'example'},
      );
      return ExampleModel.fromJson(externalJson);
    } catch (e) {
      rethrow;
    }
  }
}

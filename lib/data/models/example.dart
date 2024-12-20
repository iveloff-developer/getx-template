import 'package:get_template/domain/entities/example.dart';

const String _valueJsonKey = 'value';

final class ExampleModel extends ExampleEntity {
  ExampleModel({required super.value});

  factory ExampleModel.fromJson(final Map<String, dynamic> json) {
    if (json case {_valueJsonKey: final String value}) {
      return ExampleModel(value: value);
    }

    throw const FormatException('Unexpected JSON');
  }

  Map<String, dynamic> toJson() => <String, dynamic>{_valueJsonKey: value};
}

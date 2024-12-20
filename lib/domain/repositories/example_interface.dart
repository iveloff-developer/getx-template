import 'package:get_template/domain/entities/example.dart';

abstract interface class ExampleRepository {
  Future<ExampleEntity> getData();
}

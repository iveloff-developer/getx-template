import 'package:get_template/data/datasources/example.dart';
import 'package:get_template/domain/entities/example.dart';
import 'package:get_template/domain/repositories/example_interface.dart';

final class ExampleRepositoryImpl implements ExampleRepository {
  ExampleRepositoryImpl({required this.dataSource});

  final ExampleDataSource dataSource;

  @override
  Future<ExampleEntity> getData() async {
    try {
      return await dataSource.getData();
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:get_template/domain/entities/example.dart';
import 'package:get_template/domain/repositories/example_interface.dart';

class ExampleUseCase {
  const ExampleUseCase({required this.repository});

  final ExampleRepository repository;

  Future<ExampleEntity> execute() async {
    try {
      return await repository.getData();
    } catch (e) {
      rethrow;
    }
  }
}

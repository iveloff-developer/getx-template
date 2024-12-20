import 'package:get/get.dart';
import 'package:get_template/data/datasources/example.dart';
import 'package:get_template/data/repositories/example_implementation.dart';
import 'package:get_template/domain/repositories/example_interface.dart';
import 'package:get_template/domain/usecases/example.dart';

/// This class is responsible for the global dependency management.
final class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<ExampleDataSource>(ExampleDataSourceImpl.new)
      ..lazyPut<ExampleRepository>(
        () => ExampleRepositoryImpl(dataSource: Get.find()),
      )
      ..lazyPut(() => ExampleUseCase(repository: Get.find()));
  }
}

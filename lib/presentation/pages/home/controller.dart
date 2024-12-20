import 'package:get/get.dart';
import 'package:get_template/domain/entities/example.dart';
import 'package:get_template/domain/usecases/example.dart';

final class HomePageController extends GetxController {
  HomePageController({required this.exampleUseCase});

  static HomePageController get to => Get.find();

  final ExampleUseCase exampleUseCase;

  int counter = 0;
  bool isLoading = false;
  String? errorMessage;
  ExampleEntity? exampleEntity;

  Future<void> getData() async {
    exampleEntity = null;
    errorMessage = null;
    isLoading = true;
    update();

    try {
      exampleEntity = await exampleUseCase.execute();
    } on FormatException catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      update();
    }
  }

  void increment() {
    counter++;
    update();
  }
}

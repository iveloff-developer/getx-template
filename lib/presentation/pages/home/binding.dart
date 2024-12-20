import 'package:get/get.dart';
import 'package:get_template/presentation/pages/home/controller.dart';

final class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(
      () => HomePageController(exampleUseCase: Get.find()),
    );
  }
}

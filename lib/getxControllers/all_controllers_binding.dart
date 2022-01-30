import '../getxControllers/first_controller.dart';
import '../getxControllers/second_controller.dart';
import '../getxControllers/third.controller.dart';
import 'package:get/get.dart';

class AllControllersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstController>(() => FirstController());
    Get.lazyPut<SecondController>(() => SecondController());
    Get.lazyPut<ThirdController>(() => ThirdController());
  }
}

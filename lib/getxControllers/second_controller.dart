import 'package:get/get.dart';

class SecondController extends GetxController {
  var counter = 0.obs;
  void increment() {
    counter + 2;
  }
}

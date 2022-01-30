
import 'package:get/get.dart';

class ThirdController extends GetxController {
  var counter = 0.obs;
  void increment() {
    counter + 3;
  }
}

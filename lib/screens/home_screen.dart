import 'package:flutter/material.dart';
import 'package:flutter_getx_controllers_binding_with_routes/getxControllers/second_controller.dart';
import '../getxControllers/first_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text('FirstNumber : ${Get.find<FirstController>().counter}'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<FirstController>().increment();
              },
              child: const Text('For1stController'),
            ),
            const SizedBox(height: 20,),
            Obx(
              () => Text('SecondNumber : ${Get.find<SecondController>().counter}'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<SecondController>().increment();
              },
              child: const Text('For2ndController'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => Get.toNamed('/second-page'),
                child: const Text('NextPage'))
          ],
        ),
      ),
    );
  }
}

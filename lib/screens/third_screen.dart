import 'package:flutter/material.dart';
import 'package:flutter_getx_controllers_binding_with_routes/getxControllers/third.controller.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatelessWidget {
  final String title;
  const ThirdScreen({Key? key, required this.title}) : super(key: key);

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
            Obx(() => Text('Number is : ${Get.find<ThirdController>().counter}')),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: ()=>Get.find<ThirdController>().increment(),
              child: const Text('NextNumber'),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: ()=>Get.back(),
              child: const Text('Back')
            )
          ],
        ),
      ),
    );
  }
}

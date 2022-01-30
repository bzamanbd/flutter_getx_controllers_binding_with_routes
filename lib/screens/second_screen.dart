import 'package:flutter/material.dart';
import 'package:flutter_getx_controllers_binding_with_routes/getxControllers/second_controller.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  final String title;
  const SecondScreen({Key? key, required this.title}) : super(key: key);

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
            Obx(()=>Text('CurrentNumber : ${Get.find<SecondController>().counter}'),),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: ()=>Get.find<SecondController>().increment(),
              child: const Text('ClickMe')
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: ()=>Get.back(),
                  child: const Text('Back')
                ),
                ElevatedButton(
                  onPressed: ()=>Get.toNamed('/third-page'),
                  child: const Text('Next')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

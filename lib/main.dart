import 'package:flutter/material.dart';
import '../screens/second_screen.dart';
import '../screens/third_screen.dart';
import '../getxControllers/all_controllers_binding.dart';
import '../screens/home_screen.dart';
import 'package:get/get.dart';

void main() {
  AllControllersBinding().dependencies();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  final String _title = 'GetxController Binding with Routes';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: HomeScreen(title: _title,),
      getPages: [
        GetPage(
          name: '/home-page',
          page: ()=>HomeScreen(title: _title),
          binding: AllControllersBinding(),
        ),

        GetPage(
          name: '/second-page',
          page: ()=>SecondScreen(title: _title),
          binding: AllControllersBinding(),
        ),

        GetPage(
          name: '/third-page',
          page: ()=>ThirdScreen(title: _title),
          binding: AllControllersBinding(),
        ),

      ],
    );
  }
}

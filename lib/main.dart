import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screen1.dart';
import 'services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // final Services service = Get.put(Services());
  final Services servicesObj = Get.put(Services());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Screen1(),
    );
  }
}


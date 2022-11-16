import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screen1.dart';
import 'package:getx_app/screen2.dart';
import 'package:getx_app/screen3.dart';
import 'package:getx_app/screen4.dart';
import 'package:getx_app/screen5.dart';
import 'package:getx_app/screen6.dart';
import 'package:getx_app/screen7.dart';
import 'package:getx_app/wrongRoute.dart';
import 'services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Services servicesObj = Get.put(Services());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),  // my class which holds messages in all languages (Internationalization)
      locale: Locale("en", "US"), // setting default language
      //locale: Get.deviceLocale,   // Gets device default language
      fallbackLocale: Locale("en", "US"),   // when doesn't find right device lang , switches to here this
      debugShowCheckedModeBanner: false,
      initialRoute: "/screen1",
      unknownRoute: GetPage(name: "/wrong", page: () => WrongRoute()),
      getPages: [
        GetPage(name: "/main", page: () => MyApp()),
        GetPage(name: "/screen1", page: () => Screen1()),
        GetPage(name: "/screen2", page: () => Screen2()),
        GetPage(name: "/screen3", page: () => Screen3()),
        GetPage(name: '/screen4/:City', page: () => Screen4()),   // Passing data with parameter
        GetPage(name: "/screen5", page: () => Screen5()),    // Simple State Manager
        GetPage(name: "/screen6", page: () => Screen6()),
        GetPage(name: "/screen7", page: () => Screen7()),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Screen1(),
    );
  }
}


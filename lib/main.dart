import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/presentation/general/general_controller.dart';
import 'package:getx_app/presentation/general/views/screen1.dart';
import 'package:getx_app/routes/page_names.dart';
import 'package:getx_app/routes/app_routes.dart';
import 'package:getx_app/presentation/wrong_route/wrong_route.dart';

void main() {
  AllBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final Services servicesObj = Get.put(Services());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AllBindings(),
      translations: Messages(), // my class which holds messages in all languages (Internationalization)
      locale: Locale("en", "US"), // setting default language
      //locale: Get.deviceLocale,   // Gets device default language
      fallbackLocale: Locale("en", "US"), // when doesn't find right device lang , switches to here this
      initialRoute: PageNames.screen1,
      unknownRoute: GetPage(name: "/wrong", page: () => WrongRoute()),
      getPages: appRoutes.appRoutesList,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        body: Screen1()
      ),
    );
  }
}

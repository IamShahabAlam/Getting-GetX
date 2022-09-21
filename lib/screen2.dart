import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/main.dart';
import 'package:getx_app/screen1.dart';
import 'package:getx_app/services.dart';

class Screen2 extends StatelessWidget {

  Services servicesObj = Get.find<Services>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2".toUpperCase()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){ Get.to(Screen1());},
            child: Center(child: Text("${servicesObj.num}")),
          )
        ],
      ),
    );
  }
}

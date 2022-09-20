import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/main.dart';
import 'package:getx_app/screen1.dart';

class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){ Get.to(Screen1());},
            child: Center(child: Text("Screen 2")),
          )
        ],
      ),
    );
  }
}

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
        title: Text("GetX App"),
        actions: [
          TextButton(
              onPressed: (){ servicesObj.Dialogbox();},
              child: Icon(Icons.logout,color: Colors.white,))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Container(
              alignment: Alignment.center,
              height: Get.size.height*0.08,
              width: Get.size.width*0.3,
              color: Colors.purple,
                  child: Text("Screen 2", style: TextStyle(fontSize: 25.0,color: Colors.white ),)),

          GestureDetector(
            onTap: (){ Get.back();},
            child: Center(child: Text("${servicesObj.num}", style: TextStyle(fontSize: 25),)),
          )
        ],
      ),
    );
  }
}

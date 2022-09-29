import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          title: Text("GetX App"),
          centerTitle: true,
        ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.purple,
              height: Get.size.height*0.08,
              width: Get.size.width*0.3,
              alignment: Alignment.center,
              child: Text("Screen 4", style: TextStyle(fontSize: 25.0, color:Colors.white),),
            ),
          ),

          Container(child:
          Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Separate Parameter Passed Value"),
              Text("City : ${Get.parameters["City"]}"),
            ],
          )),

        ],
      ),
    );

  }
}

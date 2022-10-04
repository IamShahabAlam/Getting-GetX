import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/main.dart';
import 'package:getx_app/screen1.dart';
import 'package:getx_app/services.dart';

class Screen2 extends StatelessWidget {

  var data = Get.arguments;
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

          Text("Passed Data by argument : $data"),

          GestureDetector(
            onTap: (){  Get.to( () => Screen1(), arguments: ["Shahab", "22", "Fluttering 24/7"]);},   // Passed list Argument From screen2 to screen1
            child: Center(child: Text("${servicesObj.num}", style: TextStyle(fontSize: 25),)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios , color: Colors.white,),
        onPressed: (){
          // Get.toNamed('/lulu');           // Testing unknowRoute
          Get.toNamed( '/screen3?Name=Shahab Alam&Age=22');
          },  // Passing Parameters (As Website's URL)
      ),
    );
  }
}

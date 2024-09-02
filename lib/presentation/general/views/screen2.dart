import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/configs/app_size_configs.dart';
import 'package:getx_app/presentation/general/general_controller.dart';
import 'package:getx_app/routes/page_names.dart';



class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HeightWidth(context);
  var args = Get.arguments;
  var params = Get.parameters;
   GeneralController servicesObj = Get.find<GeneralController>();
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          0.03.ph,
          Container(
              alignment: Alignment.center,
              height: Get.size.height*0.08,
              width: Get.size.width*0.3,
              color: Colors.purple,
                  child: Text("Screen 2", style: TextStyle(fontSize: 25.0,color: Colors.white ),)),

          0.03.ph,
          Text("Passed Data : $args"),
          0.01.ph,
          Text("Passed Data : ${params['Data']}"),

          GestureDetector(
            onTap: (){  
              // Get.to( () => Screen1(), arguments: ["Shahab", "22", "Fluttering 24/7"]);
              // Passed list Argument From screen2 to screen1
                // Get.back(result: 'Back data from screen 2');
Navigator.of(context).pop('ham tw haaray');
              },   
            child: Center(child: Text("${servicesObj.num}", style: TextStyle(fontSize: 25),)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios , color: Colors.white,),
        onPressed: (){
          // Get.toNamed('/lulu');           // Testing unknowRoute
          Get.toNamed( '${PageNames.screen3}?Name=Shahab Alam&Age=22');
          },  // Passing Parameters (As Website's URL)
      ),
    );
  }
}

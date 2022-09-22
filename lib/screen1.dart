import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/services.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {

  var data = Get.arguments;
  Services servicesObj = Get.find<Services>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GetX App"),
        actions: [
          TextButton(
              onPressed: (){
            servicesObj.BottomSheet();
          },
              child: Icon(Icons.filter_list))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Row(
              children: [
                Text("Switch App Theme"),
                ElevatedButton(onPressed: (){ servicesObj.Theme();}, child: Icon(Icons.light_mode_outlined)),
              ],
            ),
            
            Container(
              alignment: Alignment.center,
              height: Get.size.height*0.08,
              width: Get.size.width*0.3,
              color: Colors.purple,
                child: Text("Screen 1" , style: TextStyle(fontSize: 25, color: Colors.white),)),

            Text("Passed String Data : $data"),

            Obx(() => Text("${servicesObj.num}" ,style: TextStyle(fontSize: 25,),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                ElevatedButton(
                    onPressed: (){ servicesObj.increment(); } ,
                    child: Text("Increment +")),

                ElevatedButton(
                    onPressed: (){
                      servicesObj.decrement();

                      servicesObj.snack();
                    },
                    child: Text("Decrement -"))
              ],
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ Get.to(() => Screen2() , arguments: "Data from the Screen 1");},
        tooltip: 'Increment',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
